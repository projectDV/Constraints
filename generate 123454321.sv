class sample;
	rand bit[8:0] a[];
	constraint c{foreach(a[i])
			if(i<5)
			a[i]=i;//12345
			else
        a[i]=9-i;//4321
}
