#include<iostream>
using namespace std;
int main()
{
	int t;
	cin>>t;
	while(t--)
	{
		int n,q;
		int ar[n][n]={-1};
		bool value = true;
		for(int i=0;i<q;i++)
		{
			int k,l,val;
			cin>>k>>l>>val;
			if(k==l && val!=0)
			{
				ar[k-1][l-1] = val;
				value = false;
			}
			if(k!=l)
			{
				if(ar[k][l] == -1)
				{
					ar[k-1][l-1] == val
				}
				else
				{
					value = false;
				}
				if(ar[l][k] == -1)
				{
					ar[k-1][l-1] == val
				}
				else
				{
					value = false;
				}
			}
		}
		if(value==true)
		{
			for(int i=0;i<n;i++)
			{
				for(int j=0;j<n;j++)
				{
					if(ar[i][j]==ar[i][j+1] && ar[i][j]==1)
					{
						if(ar[][])
					}
				}
			}
		}
		if(value == true)
		{
			cout<<"yes\n";
		}
		else
		{
			cout<<"no\n";
		}
	}
}