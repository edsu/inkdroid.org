---
layout: post
title: Birds in the morning
tags:
- foundsound
- machine-learning
- translation
---

This is a recording I made earlier in the Spring, listening to the birds at dawn. 

<audio controls src="/audio/20240514-birds-in-the-morning.mp3"></audio>

On a lark (pun intended) I used [Whisper](https://github.com/openai/whisper) to see what their speech-to-text model (built with over a million hours of video [scraped](https://www.theverge.com/2024/4/6/24122915/openai-youtube-transcripts-gpt-4-training-data-google) from YouTube) would make of it.

By default Whisper thinks the bird song is spoken Javanese. The transcription that is generated is the character ཨོཾ repeated over and over again. Apparently this is [Tibetan for Om](https://en.wiktionary.org/wiki/%E0%BD%A8%E0%BD%BC%E0%BD%BE)?

You can override Whisper's language detection by telling it to use a specific language. So I tried a few, and then used Google Translate to convert the more interesting looking ones to English. Here's a poem I assembled from the fragments.

---

Good morning!

We are now near Stuttgart,  
in the squad of the squad of the squad.

My wife went outside.  
Thanks for looking.

Who takes care of a little bit of oil?  
You can with yourself.

No, no, no, no, no, no,  
small small small,  
a little bit a little bit a little bit.

Yeah yeah yeah yeah yeah I can see this place  
Slurry All straw straw straw.

We are increasing,  
what are you going to do going to go to go to go to?

Thank you for subscribing to the channel.  
Your our our our our our.

---

Here are the (supposed) translations if you are curious:

| Language | Transcription | Translation |
| -------- | -------- | ----------- |
| German   | Wir sind jetzt in der Nähe von Stuttgart.       | We are now near Stuttgart. |
| French   | qui s'occupe d'un petit peu d'huile             | who takes care of a little bit of oil |
| Spanish  | no, no, no, no, no, no,                         | no, no, no, no, no, no |
| Chinese  | 小的小小的小                                    | small small small | 
| Japanese | ん ん ん ん ん 私はこの場所を見ることができます | yeah yeah yeah yeah yeah I can see this place |
| Estonian | Läga Kõik põhle põhle põhle                     | Slurry All straw straw straw                  |
| Hindi    | अपने अपने                                         |                                               | your own |
| Urdu     | اپنے ساتھ سکتے ہیں                              | You can with yourself |
| Hebrew | קצת קצת קצת קצת קצת | A little bit a little bit a little bit |
| Catalan | A l'esquadra de l'esquadra de l'esquadra | In the squad of the squad of the squad |
| Flemish | Mijn vrouw is in de buitenkant gegaan. Bedankt voor het kijken. | My wife went outside. Thanks for looking. |
| Macedonian | Повеќаме, што ќе ќе ќе ќе ќе ќе ќе ќе ќе ќе? | We are increasing, what are you going to do going to go to go to go to? |
| Lithuanian | Jūsų mūsų mūsų mūsų mūsų mūsų | Your our our our our our |
| Polish | Dzień dobry. | Good morning. |
| Vietnamese | Cảm ơn các bạn đã đăng ký kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh kênh. | Thank you for subscribing to the channel channel channel channel channel channel channel channel channel channel channel channel channel channel channel channel channel channel channel channel channel. |
