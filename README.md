Trigger AI – Simple Bash Interaction
Overview

Trigger AI is a simple, trainable Bash script that lets you teach the AI trigger words and responses.

Once trained, the AI can ask a question, and if the user responds with a trigger word, it will output the associated response.

All triggers are saved for future sessions, so the AI remembers what you’ve taught it.

It’s a minimal, interactive way to experiment with custom word triggers and dynamic responses in Bash.

How It Works

Train a trigger:

You enter a trigger word (the keyword the AI will recognize).

You enter the response the AI should give when it hears the trigger.

Ask a question:

The AI will prompt the user with a question like "What's the secret word?".

Respond to triggers:

If the user types a word that matches a stored trigger, the AI outputs the associated response.

If no match is found, the AI responds with "I don't know that one yet!".

Persistent memory:

All triggers and responses are stored in a file called triggers.txt.

Triggers persist across script executions, so your AI “learns” over time.

$ ./trigger_ai.sh

Enter a trigger word: banana

Enter the response for this trigger: Yum, bananas are my favorite!

AI asks: What's the secret word? banana

AI responds: Yum, bananas are my favorite!






