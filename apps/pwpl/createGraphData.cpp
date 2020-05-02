#include <iostream>
#include <iomanip>
#include <fstream>
#include <string.h>
#include <sys/time.h>

using namespace std;

int num_v = 1000; // 顶点数量 10亿
//int num_v = 100L;
int num_e = 0; // 边数量 100亿
// 取得[a,b]的随机整数
int my_random(int a, int b){
    return (rand() % (b-a+1))+ a;
}
inline double GetCurrentTimeSec() {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    return tv.tv_sec  + tv.tv_usec * 1e-6;
}
int main(){
    char buffer[256];
    ofstream outfile("GraphLab3.txt");

    if(!outfile){
        cout << "Unable to open / create otfile" << endl;
            exit(1); // terminate with error

    }
    cout << "create file success!" << endl;
    cout << "random..." << endl;
    char * flg = new char[num_v+5]; // 用于标记是否已经连接过该点
    int show_last = 0;


    double time_start = GetCurrentTimeSec();
    long n = num_v * 2;
    int * rand = new int[n];
    for(int i = 0;i < n;i++){
        rand[i] = my_random(0,num_v);
    }
    double elapsed_time = GetCurrentTimeSec() - time_start;
    cout << "random time: " << elapsed_time << endl;

    
    for(int i = 0;i < num_v;i++){
        //cout << "count : " << i <<endl;
        int j = (int)my_random(0,20); // 每个顶点有0-20条边
        memset(flg,'0',sizeof(char)*num_v);
        flg[i] = '1';
        outfile << i << " ";
        for(int k = 0;k < j;k++){
            int v = my_random(0,num_v);
            
            if(flg[v] == '0'){
                float weight = my_random(1,10000)*1.0/1000000;
                /*sprintf(buffer,"%10ld %10ld %10.8f",i,v,weight);
                outfile << buffer << endl;*/
                // cout << "buff " << buffer << endl;
                outfile << v << " " << weight << " ";
                flg[v] = '1';
                num_e++;
            }
            else
            {
                k--;
            } 
            // cout << " V:" <<  v << " flg :" << flg[v] << endl; 
        }
        outfile << endl;
        int t = i * 1000 / num_v ;
        if(t != show_last){
            cout << t << "%" << endl;
            show_last = t;
        }
    }
    elapsed_time = GetCurrentTimeSec() - time_start;
    outfile.close();
    free(flg);
    cout << "nums of edges is : " << num_e << endl;
    cout << "time cost : " << elapsed_time << endl;
    return 0;
}