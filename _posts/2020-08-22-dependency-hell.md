---
title: Dependency Hell
tags:
- software
- maintenance
- infrastructure
layout: post
---

[XKCD 2347](https://xkcd.com/2347/) was published this week, which got some
[attention](https://lists.stevens.edu/pipermail/themaintainers/2020-August/000724.html)
on the maintainers discussion list. One thing I learned there is that GitHub has
added the ability to get the dependencies for a GitHub project using the their
[GraphQL API](https://developer.github.com/v4/object/dependencygraphmanifestconnection/).
So once you've got set up with an API token you can issue a GraphQL query like
this:

```graphql
{
	repository(owner: "%s", name: "%s") {
		description
		dependencyGraphManifests(first: 50) {
			nodes {
				blobPath
				dependencies {
					nodes {
						packageName
						repository {
							name
							owner {
								login
							}
							primaryLanguage {
								name
							}
						}
						requirements
						hasDependencies
					}
				}
			}
		}
	}
}
```

and get back some data like this:

```json
{
  "data": {
    "repository": {
      "description": "A command line tool (and Python library) for archiving Twitter JSON",
      "dependencyGraphManifests": {
        "nodes": [
          {
            "blobPath": "/DocNow/twarc/blob/main/setup.py",
            "dependencies": {
              "nodes": [
                {
                  "packageName": "pytest",
                  "repository": {
                    "name": "pytest",
                    "owner": {
                      "login": "pytest-dev"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                },
                {
                  "packageName": "python-dotenv",
                  "repository": {
                    "name": "python-dotenv",
                    "owner": {
                      "login": "theskumar"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                }
              ]
            }
          },
          {
            "blobPath": "/DocNow/twarc/blob/main/requirements/python2.txt",
            "dependencies": {
              "nodes": [
                {
                  "packageName": "mock",
                  "repository": {
                    "name": "python-mock",
                    "owner": {
                      "login": "calvinchengx"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                },
                {
                  "packageName": "pytest",
                  "repository": {
                    "name": "pytest",
                    "owner": {
                      "login": "pytest-dev"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                },
                {
                  "packageName": "python-dateutil",
                  "repository": {
                    "name": "python-dateutil",
                    "owner": {
                      "login": "paxan"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                },
                {
                  "packageName": "requests-oauthlib",
                  "repository": {
                    "name": "requests-oauthlib",
                    "owner": {
                      "login": "requests"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                },
                {
                  "packageName": "unicodecsv",
                  "repository": {
                    "name": "python-unicodecsv",
                    "owner": {
                      "login": "jdunck"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": false
                }
              ]
            }
          },
          {
            "blobPath": "/DocNow/twarc/blob/main/requirements/python3.txt",
            "dependencies": {
              "nodes": [
                {
                  "packageName": "pytest",
                  "repository": {
                    "name": "pytest",
                    "owner": {
                      "login": "pytest-dev"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                },
                {
                  "packageName": "python-dateutil",
                  "repository": {
                    "name": "python-dateutil",
                    "owner": {
                      "login": "paxan"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                },
                {
                  "packageName": "requests-oauthlib",
                  "repository": {
                    "name": "requests-oauthlib",
                    "owner": {
                      "login": "requests"
                    },
                    "primaryLanguage": {
                      "name": "Python"
                    }
                  },
                  "requirements": "",
                  "hasDependencies": true
                }
              ]
            }
          }
        ]
      }
    }
  }
}
```

The cool thing here is that GitHub is doing the work of figuring out how
dependencies are managed in the project (`requirements.txt`, `pom.xml`,
`Cargo.toml`, `Gemfile`, etc). Sometimes it looks like the results return a
`loading` error message, which later return ok. So maybe GitHub are lazily
calculating some of this information?

To test the API I created a small command line utility called
[xkcd2347](https://github.com/edus/xkcd2347) which you give a GitHub repository
and it will print out the dependencies:

```shell
$ xkcd2347.py docnow/twarc
 pytest: https://github.com/pytest-dev/pytest
 python-dotenv: https://github.com/theskumar/python-dotenv
 mock: https://github.com/calvinchengx/python-mock
 python-dateutil: https://github.com/paxan/python-dateutil
 requests-oauthlib: https://github.com/requests/requests-oauthlib
 unicodecsv: https://github.com/jdunck/python-unicodecsv
```

If you like you can look at the dependencies of the dependencies using the
`--depth` option:

```shell
$ xkcd2347.py --depth 2 docnow/twarc
 pytest: https://github.com/pytest-dev/pytest
  pallets-sphinx-themes: https://github.com/pallets/pallets-sphinx-themes
  pygments-pytest: https://github.com/asottile/pygments-pytest
  sphinx: https://github.com/sphinx-doc/sphinx
  sphinx-removed-in: https://github.com/MrSenko/sphinx-removed-in
  sphinxcontrib-trio: https://github.com/python-trio/sphinxcontrib-trio
 python-dotenv: https://github.com/theskumar/python-dotenv
  bumpversion: https://github.com/peritus/bumpversion
  click: https://github.com/pallets/click
  flake8: https://github.com/PyCQA/flake8
  ipython: https://github.com/ipython/ipython
  mock: https://github.com/calvinchengx/python-mock
  portray: 
  pytest: https://github.com/pytest-dev/pytest
  pytest-cov: https://github.com/pytest-dev/pytest-cov
  sh: https://github.com/amoffat/sh
  tox: https://github.com/tox-dev/tox
  twine: https://github.com/pypa/twine
  typing: https://github.com/python/typing
  wheel: https://github.com/IsCoolEntertainment/debpkg_python-wheel
 mock: https://github.com/calvinchengx/python-mock
 python-dateutil: https://github.com/paxan/python-dateutil
 requests-oauthlib: https://github.com/requests/requests-oauthlib
  oauthlib: https://github.com/oauthlib/oauthlib
  requests: https://github.com/psf/requests
  mock: https://github.com/calvinchengx/python-mock
  requests-mock: 
 unicodecsv: https://github.com/jdunck/python-unicodecsv
```

If you like you can use it as a Python library too:

```
import xkcd2347

gh = xkcd2347.GitHub(key="yourkeyhere")

for dep in gh.get_dependencies('docnow', 'twarc'):
    print(dep['packageName'])
```

The hierarchy could probably be better presented, at the moment a dependency is
indented by a space

If you run it with `--level 0` it will walk as far into the dependency hierarchy
as it can. But beware...these go very deep. The utility is smart enough to cache
GraphQL query results: so it won't keep hammering on the GitHub API for the same
information over and over. It also takes care not to wander down circular
dependencies, for situations where a package has a dependency somewhere in the
tree of dependencies that includes itself. 
