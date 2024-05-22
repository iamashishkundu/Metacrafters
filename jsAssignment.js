/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const arr=[];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (name,uid,sec) {

const obj={
    "name":name,
    "uid":uid,
    "sec":sec
};
    arr.push(obj);
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
    for(let i=0;i<arr.length;i++){
        console.log("\n");
        console.log("name:\t"+ arr[i].name);
        console.log("uid:\t"+ arr[i].uid);
        console.log("sec:\t"+ arr[i].sec);
    }

}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    console.log("\ntotal NFT's : "+arr.length);

}

// call your functions below this line
mintNFT("Ashish","22BCS15150","501");
mintNFT("Aryan","22BCS14462","502");
mintNFT("Ankit","22BCS15185","503");
mintNFT("Nitesh","22BCS15159","504");

listNFTs();
getTotalSupply();
