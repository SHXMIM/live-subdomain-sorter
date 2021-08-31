# live-subdomain-sorter

This is a tool is helps to find the subdomains of a domain and sort the live subdomain and save the sorted live subdomains file!!

### Usage

### go installation

### Download and Install

#### Binary Distributions

Official binary distributions are available at https://golang.org/dl/.
```
cd /root/Downloads
```
```
tar -C /usr/local/ -xzf go1.13.6.linux-amd64.tar.gz
```
```
vim ~/.bashrc
```
```
export GOPATH=/root/go-workspace
export GOROOT=/usr/local/go
PATH=$PATH:$GOROOT/bin/:$GOPATH/bin
```
```
source ~/.bashrc
```
```
vim helloworld.go
```
```
package main
import "fmt"
func main() {
fmt.Printf("Hello world!\n")
}
```
```
go run helloworld.go
```
### live-subdomain-sorter installation

```
git clone https://github.com/SHXMIM/live-subdomain-sorter.git
```
```
cd live-subdomain-sorter
```
```
chmod 755 live-subdomain-sorter.sh
```
```
./live-subdomain-sorter.sh
``` 
### Example

```
./live-subdomain-sorter

press the option 1

 Enter The Domain Name 
```
### Output
```
[*] Finding The Subdomains Of A Domain

[*] Finding The Live Subdomains

[*] Sort The Live Subdomains From The Domain

[*] Save The File Of A Sorted Live Subdomains
```
