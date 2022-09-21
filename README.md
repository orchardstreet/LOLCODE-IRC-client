# LOLCODE-IRC-client
An IRC client written in an obscure programming language called 'LOLCODE'

It only continuously reads and outputs what is sent to it from specified channels.  It doesn't support sending custom messages to channels.
This is because LOLCODE doesn't officially support multiplexing, non-blocking sockets etc.
Might fork LOLCODE later to unofficially add multiplexing and/or non-blocking socket support,
so that you can send custom messages to channels.

## To run on Debian based systems

sudo apt update && sudo apt install cmake build-essential git -y

git clone --branch future https://github.com/justinmeza/lci

cd lci

cmake .

make

sudo make install

cd ..

git clone https://github.com/orchardstreet/LOLCODE-IRC-client

cd LOLCODE-IRC-client

lci LOLCODE-IRC-client.lol
