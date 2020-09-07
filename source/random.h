#ifndef __RANDOM_H__
#define __RANDOM_H__

#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <windows.h>
using namespace std;

/* It returns a integer in [randsrt,randend). */
int random(int randsrt=19491001,int randend=0)
{
	if (randsrt>randend) swap(randsrt,randend);
	int randre=((rand()<<16)+(rand()<<1)+rand()%2),randnow=randend-randsrt,randrmid,randbkt;
	if (randre==2147483647) return random(randsrt,randend);
	randrmid=2147483647%randnow;
	randbkt=2147483647/randnow;
	if (randre<2147483647-randrmid) return randsrt+randre/randbkt;
	else return random(randsrt,randend);
}

void setseed(int randsed=-1)
{
	if (randsed==-1) srand((unsigned)::GetTickCount());
	else srand(randsed);
}

#endif
