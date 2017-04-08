---
title: MITH Graphs
layout: post
tags:
- networks
- visualization
- mith
---

For the next few weeks I'm helping out in Matt Kirschenbaum's [Critical Topics
in Digital
Studies](http://mith.umd.edu/mith-announces-first-courses-ever-spring-2017/)
where we will be taking a look at network analysis in the humanities. The plan
is to provide a gentle introduction to the use of network analysis, aka graphs,
in the digital humanities, while also creating a space to give the students some
hands on experience using some tools. These working sessions are paired with
discussions of a bunch of fun readings about algorithms, networks and platforms
by [Tressie McMillan Cottom](http://dhdebates.gc.cuny.edu/debates/text/98),
[Benjamin Schmidt](http://dhdebates.gc.cuny.edu/debates/text/99), [Tarleton
Gillespie](http://culturedigitally.org/2014/06/algorithm-draft-digitalkeyword/),
[Jen
Golbeck](https://www.ted.com/talks/jennifer_golbeck_the_curly_fry_conundrum_why_social_media_likes_say_more_than_you_might_think),
[Zeynep
Tufekci](http://ctlj.colorado.edu/wp-content/uploads/2015/08/Tufekci-final.pdf),
[Nick
Diakopoulos](http://www.nickdiakopoulos.com/wp-content/uploads/2011/07/algorithmic_accountability_final.pdf),
[Frank Pasquale](http://www.hup.harvard.edu/catalog.php?isbn=9780674368279) as
well as [Alex Galloway &amp; Eugene
Thacker](http://www.upress.umn.edu/book-division/books/the-exploit).

Thanks to a [conversation](https://inkdroid.org/2017/03/24/teaching-networks/)
with Miriam Posner, Thomas Padilla and Scott Weingart a few weeks ago I got some
ideas for how this could work. Specifically Miriam's idea of having the students
assemble edge lists for networks that are relevant to them in Google Sheets, and
then using Google Fusion tables to do some basic visualization followed by some
more analysis and tuning of the visualization with Cytoscape. Miriam's
[Cytoscape Tutorials](https://github.com/miriamposner/cytoscape_tutorials) are
so lucid and useful I'm planning to just use them directly. I really appreciate
that she took the time to make them available for use by other people.

So I wanted to create my own little demonstration dataset similar to how Miriam
used films to learn my way around Fusion Tables and Cytoscape. Over a year ago
MITH made its [Research Explorer](http://mith.umd.edu/research/) available,
which is a small app that allows people to browse research projects from the
last 10 years by sponsor, topic and time.  One nice side effect of putting the
JavaScript application together is that the project information that has been
curated in Wordpress is also available as a [single file of
JSON](http://mith.umd.edu/wp-content/mu-plugins/mith-research-explorer-data/projects.json).

So without [too much
work](http://github.com/umd-mith/mithgraph/blob/master/get.py) it's possible to
download that JSON file and then turn it into an [edge
list](https://github.com/umd-mith/mithgraph/blob/master/data.csv) CSV file where
column 1 is a project and column 2 is a person who was involved in the project.
Then you can load it into Google Fusion Tables and with two clicks you are
looking at a graph of that data:

<iframe width="800" height="500" scrolling="no" frameborder="no"
src="https://fusiontables.google.com/embedviz?containerId=googft-gviz-canvas&amp;viz=GVIZ&amp;t=GRAPH&amp;gc=true&amp;gd=false&amp;sdb=1&amp;rmax=100000&amp;uiversion=2&amp;q=select+col0%2C+col1+from+1jXrD2hGkKfZQkMXHw9jjLbJ6m5oh8JebqW1pWHf-&amp;qrs=+where+col0+%3E%3D+&amp;qre=+and+col0+%3C%3D+&amp;qe=&amp;state=%7B%22ps%22%3A%221_8_-ai_1e_1_-9q_1_w_-bj_2m_8s_-d6_e_i_-9z_-1n_x_-bm_11_42_-be_-51_y_-9z_10_b_-7m_2m_10_-9d_1b_1n_-76_-u_60_-49_3w_8h_-b5_-z_6_-a8_3b_24_-68_27_7_-7p_3d_1p_-6q_-2g_84_-8f_-v_20_-7f_-2l_35_2_22_6e_-81_-1t_0_-8z_2p_a_-8i_4a_14_-bp_-c_5c_-7q_11_5l_-ci_11_7n_-23_f_2u_-1o_2b_6r_-2h_-6_3_-8r_1g_12_-d3_1o_2k_-3o_-g_3u_-1t_-n_4y_-8a_r_51_-9j_22_55_-a3_-i_5g_-au_23_6y_-1x_-29_7j_-3z_-1l_5_-72_2w_1c_-8h_2g_1h_-6w_43_27_-4x_2t_2h_-b8_1p_2j_-ce_1_2l_-2k_-1p_2m_-2i_-19_2v_-8n_3e_3y_-3e_h_80_-a7_1y_81_-9u_2i_96_-9f_-2c_2e_-6y_1n_2o_-33_-1b_3q_-42_1n_3w_-1c_-4_59_-be_b_5v_-1e_-1h_7d_-1x_15_7h_-30_-23_9g_-cn_-d_d_-7h_4v_2q_-2s_-o_2r_-ay_2m_4q_-5x_3c_4t_-8x_u_4v_-ab_2k_4x_-90_23_5q_-b2_j_7v_-ah_f_7z_-ao_q_8c_-bo_1r_9c_-by_-11_2_-87_1q_1e_-95_40_2d_-8e_22_2p_-4j_r_2w_-8n_-5_2x_-9h_-t_2y_-8b_-4_3j_-36_2o_4e_-av_-33_5s_-e8_2b_5y_-e_2u_7t_-ap_-7_8p_-du_-e_99_-93_-10_9e_-ee_1s_h_-a5_3y_r_-ap_-1i_s_-90_-1r_1a_-7n_41_1f_-94_4k_1g_-6w_3d_1m_-81_8_1q_-6s_-3e_1s_-7d_-3e_1t_-72_-3g_1v_-6a_-2z_1w_-6i_-39_1y_-8j_-1q_29_-4z_v_2i_-cf_1y_2z_-7c_3x_32_-71_w_3i_-bk_-60_3l_1n_2z_3m_q_30_3v_-r_-t_3x_-16_a_4p_-3k_4n_4r_-55_40_4z_-7f_9_50_-76_i_53_-aq_4e_58_-5n_2p_5i_-9e_k_5p_-b1_z_5t_-f3_29_5w_-14_-2g_5x_-x_-25_6f_-8k_-2q_7s_-ax_7_7u_-6n_3o_7w_-12_30_7y_-5x_1l_8t_-di_-m_9d_-cv_-1c_4_-96_3l_9_-9f_3j_c_-8e_58_e_-8x_54_f_-8o_58_g_-85_55_j_-ae_-2e_k_-an_-2h_l_-9w_-2i_m_-af_-2m_n_-9q_-2p_o_-au_-21_p_-9z_-2r_q_-a5_-2h_t_-au_-2a_u_-al_-28_v_-a7_-2q_z_-ce_3b_11_-bo_3m_13_-c5_3i_15_-ci_2u_16_-c5_3a_17_-cf_32_18_-bx_3j_%22%2C%22cx%22%3A-228%2C%22cy%22%3A2%2C%22sw%22%3A1606.4142809361192%2C%22sh%22%3A764.6397829925578%2C%22z%22%3A0%7D&amp;gco_forceIFrame=true&amp;gco_hasLabelsColumn=true&amp;att=true&amp;width=800&amp;height=485"></iframe>

It's a little bit interesting, and it's nice you can manipulate the graph ...
but it's kind of a mess really. One thing that Miriam suggested doing is taking
the two-mode graph (there are two types of nodes here: people and projects) and
projecting it as two one-mode graphs: one of people and the other of projects.
The people graph contains people who were associated because they have worked
together on the same project. The graph of projects would contain projects
linked together because some of the same people worked on them.  Here's what
they look like:

<iframe width="800" height="500" scrolling="no" frameborder="no"
src="https://fusiontables.google.com/embedviz?containerId=googft-gviz-canvas&amp;viz=GVIZ&amp;t=GRAPH&amp;gc=false&amp;gd=false&amp;sdb=1&amp;rmax=100000&amp;q=select+col0%2C+col1%2C+col2+from+15puH-pJMrbZCUz_0uGv52F2rYZERfE5-wOQJaV0g&amp;qrs=+where+col0+%3E%3D+&amp;qre=+and+col0+%3C%3D+&amp;qe=&amp;uiversion=2&amp;state=%7B%22ps%22%3A%221_7_-7k_-h_0_-7d_-18_t_-8a_-h_9_-6o_-i_u_-7i_s_10_-8j_-19_w_-7r_9_16_-6c_-1x_5_-72_3_y_-8v_-6_2_-6t_k_6_-69_-11_23_-93_-t_1h_-4z_-1e_2s_-5m_18_4_-5v_-j_25_-9e_-2t_42_-4g_c_43_-40_4_44_-4c_-e_4q_-4b_1k_p_-5r_-15_f_-83_-13_4m_-3y_11_o_-64_-6_40_-3u_-h_2d_-8y_-1q_3f_-57_-1q_17_-6v_-3a_18_-5z_-3d_19_-6s_-3m_1a_-5j_-31_1b_-6e_-3g_v_-8e_o_x_-7y_12_z_-8u_p_11_-8y_d_12_-84_t_13_-8m_f_14_-8l_w_15_-8b_11_1j_-4y_-q_24_-7x_-1r_2e_-9k_-15_2f_-9j_-a_2g_-9c_-1w_2h_-9v_-z_2i_-9u_-g_2j_-9n_-1t_2k_-9s_-1f_2l_-9g_5_2m_-9e_-1i_2n_-9q_1_2o_-9n_-q_3n_-4d_-1e_g_-6j_10_h_-5a_-e_i_-5p_6_j_-5d_6_k_-69_q_l_-5x_t_m_-5i_-5_n_-5f_-q_q_-5y_h_r_-5l_j_s_-68_11_1v_-7f_-1u_3c_-6t_-2b_5l_-bf_-42_5m_-al_-4f_5n_-ax_-2w_5o_-bm_-3o_5p_-a4_-4q_5q_-aq_-3f_5r_-as_-4t_5s_-ae_-4u_5t_-bi_-3b_5u_-b4_-4g_5v_-b7_-3n_5w_-ay_-42_5x_-9v_-4i_5y_-ac_-3z_5z_-bb_-32_60_-9q_-44_b_-6u_-1s_1_-6c_6_1n_-7g_-2v_2t_-6x_1g_2u_-77_1j_49_-34_-28_4a_-3j_-2d_4b_-37_-2k_4c_-3x_-39_4d_-2z_-1v_4e_-3b_-1d_4f_-31_-1j_4g_-3u_-2u_4h_-3m_-35_4i_-48_-35_4j_-3f_-2u_4k_-3b_-1v_4r_-4e_26_26_-7s_-2e_27_-8x_-2c_28_-95_-26_29_-8d_-2h_2a_-8o_-2j_2b_-8m_-27_2c_-83_-2h_36_-99_o_1f_-5g_-2a_1g_-59_-22_1i_-5p_-2a_1k_-5b_-16_1l_-5y_-2f_1m_-5j_-1z_3p_-4k_-w_1w_-6d_-31_1x_-6m_-2z_1y_-6w_-2t_1z_-5m_-2m_20_-5v_-2s_21_-68_-2s_22_-62_-30_3w_-5f_-3s_3x_-66_-44_3y_-53_-3h_3z_-5r_-3z_4t_-37_17_4u_-2z_q_1c_-78_-3l_1d_-77_-3a_1e_-7g_-3a_1o_-85_-37_1p_-7h_-3k_1q_-7p_-3h_1r_-89_-2z_1s_-7y_-32_1t_-7x_-3d_1u_-7q_-37_57_-1t_-m_58_-26_p_59_-1y_9_5a_-1u_-6_5b_-1w_-13_%22%2C%22cx%22%3A-233.0078939962874%2C%22cy%22%3A-44.40489595718624%2C%22sw%22%3A1375.1940113771202%2C%22sh%22%3A654.5808655406751%2C%22z%22%3A1.4983312526301835%7D&amp;gco_forceIFrame=true&amp;gco_hasLabelsColumn=true&amp;att=true&amp;width=800&amp;height=500"></iframe>

<iframe width="800" height="500" scrolling="no" frameborder="no"
src="https://fusiontables.google.com/embedviz?containerId=googft-gviz-canvas&amp;viz=GVIZ&amp;t=GRAPH&amp;gc=false&amp;gd=false&amp;sdb=1&amp;rmax=100000&amp;q=select+col0%2C+col1%2C+col2+from+1u2124iqkZxvtmgue0XOjQHQxKTHWFpHF-iH7B-R5&amp;qrs=+where+col0+%3E%3D+&amp;qre=+and+col0+%3C%3D+&amp;qe=&amp;uiversion=2&amp;state=%7B%22ps%22%3A%221_3_-4l_-g_b_-51_-q_l_-4h_-14_e_-5c_3_0_-3y_-w_d_-4v_4_15_-59_-1l_16_-5o_-1i_k_-4e_-1p_s_-5i_-12_u_-3o_-1e_y_-57_-23_2_-46_0_13_-5t_-5_j_-3w_-1t_7_-2z_-b_12_-64_-15_14_-5z_-q_17_-65_-1l_m_-4q_-1x_t_-5o_-20_v_-4s_-2c_1_-37_5_8_-3k_-n_n_-5h_-j_a_-54_k_10_-40_-f_11_-4v_-1c_i_-4d_-26_6_-2y_u_h_-4x_16_c_-3k_v_o_-2l_-18_9_-38_12_g_-4m_z_1d_-6c_-d_1e_-6i_-t_1g_-3k_-b_1h_-36_-17_p_-25_-o_1a_-29_7_1f_-39_-x_1o_-1n_-b_1q_-1s_-11_z_-2i_-v_1l_-3l_h_r_-3i_-23_1m_-3a_l_1w_-2a_-2l_1b_-2s_-1o_1n_-2g_n_1u_-1k_-22_4_-44_13_5_-49_1c_f_-3v_1b_18_-2e_-6_19_-2o_6_1z_-1g_-2n_1c_-2g_-h_1x_-10_-2l_1y_-y_-22_26_-24_-21_q_-2g_-1n_1i_-42_-2k_1p_-1u_l_1r_-1q_9_21_-2s_-32_20_-2r_-2p_w_-4h_-2l_x_-3z_-2c_1s_-1i_-1i_1t_-2r_-23_25_-5_-1h_1j_-64_13_1k_-5s_1a_22_-c_-19_23_-h_-10_24_-c_-1u_27_-e_-1l_1v_-6g_p_29_-4n_1y_28_-50_3o_2a_1m_-1o_2b_-15_-3x_2c_-1v_-3m_%22%2C%22cx%22%3A-150.26637555750222%2C%22cy%22%3A-11.784005161152738%2C%22sw%22%3A1089.3605413297844%2C%22sh%22%3A518.5265207164736%2C%22z%22%3A2.247433044949765%7D&amp;gco_forceIFrame=true&amp;gco_hasLabelsColumn=true&amp;att=true&amp;width=800&amp;height=485"></iframe>

As you can see they are much more interesting. The people one in particular
shows MITH's Director Neil Fraistat at the center. Also our designer Kirsten
Keister who has been in MITH for a while, has worked with many different people
over the years.

Miriam had the students use R to do this projection, using a small [helper
function](https://github.com/mdlincoln/projectoR/blob/master/R/project_table.R)
that Matt Lincoln wrote. But I've been meaning to learn more about Python's
[igraph](http://igraph.org/python/) so I took it as opportunity to [learn how to
do it](https://github.com/umd-mith/mithgraph/blob/master/project_graphs.py).
It's not as elegant's as Matt's code, but it works. I think I may turn it into a
little microservice so the students can just use the browser to do the
transformation.

The next step for the class is going to show how to take the same edge list and
load it into Cytoscape where the graph can be manipulated a bit more.
Specifically it's possible to use the number of times people collaborated
together as edge weights, and to use that weight to change the appearance of the
edge. In this example I used the weight to make the edge thicker. I also had
Cytoscape analyze the graph which provided each node's
[degree](https://en.wikipedia.org/wiki/Degree_(graph_theory)) or the number of
edges for each node. Using Miriam's notes it's clear how to adjust the size of
the node based on the degree. This has the effect of making more connected nodes
larger.

<br>

<div style="text-align: center;"><a href="/images/mith-people.png"><img
style="border: thin solid #ddd;" class="img-responsive"
src="/images/mith-people.png"></a></div>

<br>

It's not really very legible here, but in Cytoscape it's easy to zoom in and see
that there was a cohort of people who did lots of work together: Trevor Muñoz,
Kirsten Keister, Jennifer Guiliano, Amanda Viscontin, Travis Brown, James Smith
and Neil Fraistat. You can also see bridging people like Ben Schneiderman who
brought in people from outside of MITH's usual collaborators.  If you are
interested and have Cytoscape you can find the cys file
[here](https://github.com/umd-mith/mithgraph/raw/master/people.cys). The nodes
colored in red were selected because they were all people who had worked
directly with Neil.

If you have ideas or comments about any of this I'd enjoy hearing them either
here or [\@edsu](https://twitter.com/edsu).
