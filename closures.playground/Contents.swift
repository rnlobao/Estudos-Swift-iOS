//functions are special types of closures
//closures are kind of blocks that contains functionalities and can be used more than one time in your code
//the closure syntax is :
/*
 { (parameters) -> return type in
     statements
 }
 */

//all functions are closures but not all closures are functions
/*
 there are three forms of closures:
 1) GLobal functions: closures with name and dont capture values
 2) nested functions: closures with name and capture values
 3) closure expressions: unnamed and capture values
*/
//Closures sometimes make functions easier to use and more adaptable
//the in word mark the end of the parameters and the beginning of the code




//We can use _ to make a parameter of a function not mandatory so we can pass only the value
func printarNome(_ nome: String) -> String {
    return nome
}
print(printarNome("aaa"))

