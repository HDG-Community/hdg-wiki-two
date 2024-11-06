---
title: HabTix Information
date: 2024-11-05T00:00:00+00:00
authors: The Clerks
draft: false
description: Information on use of the ticketing system on the HDG community server.
---
_This article covers information regarding the [HDG Community Server](http://discord.humandomestication.guide/)._
## HabTix Bot for Discord
We're using an implementation of [Eartharoid's Discord Tickets Bot](https://github.com/discord-tickets/bot) to create private channels between server members and the Clerks/Gardeners. 
### Workflow for members creating a ticket: 
Server members will click the "create a ticket" button in #Clerks-Office. This will create a private channel with themself and the staff team.

They will send text about their sugestion/comment/concern and staff can respond directly. When they are finished, they can use `/close` to request the ticket be closed. Staff will have to accept this closure. 

After the ticket is closed, members will be able to use `/transcript` in #bots-here to bring up a menu with their previous tickets. Upon choosing a ticket, they will be able to see the full transcript of the ticket in a `.md` file. 

Upon the closure of the ticket, the channel will automatically be deleted. 
### On Privacy and Collection of Information:
The full text of tickets are stored in a database on the bot host, which is currently one of the staff team's private machines. We emplore you not to share private information anywhere on discord (every message you send is *also* stored in a database), and we *especially* encourage you not to share anything you don't want to be logged in the ticketing system. 

While only you and the server staff can summon the transcript of the conversation, the information *is out there* on a web host *you do not control*. If you wish, you can use the ticket to request to speak privately with a member of staff in DMs

Your username and nickname are also collected, as well as the time you sent your message and any attachments you include including emojis and photos. 

Once more, in bold: **Don't share personally identifying photos or  information anywhere in the server, but especially not in the tickets chat!**