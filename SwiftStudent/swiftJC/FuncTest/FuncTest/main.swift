//
//  main.swift
//  FuncTest
//
//  Created by Seven on 16/4/25.
//  Copyright © 2016年 Seven. All rights reserved.
//
/**
*   方法的实现和调用
*
*  @param "Hello  <#"Hello description#>
*  @param World!" <#World!" description#>
*
*  @return <#return value description#>
*/
import Foundation

print("Hello, World!")

/**
  不带返回值的方法的实现
 funName ＝＝方法名
 - parameter Object: 参数＝＝后面的是参数类型
 */
func funName(Object:String){
print(Object)
}

funName("参数") ///方法的调用


/**
 带多个返回值的方法的实现
－>后面的就是返回值的数据类型
- returns: <#return value description#>
*/
func funName1()->(Int,Int){
return (2,5)
}

var (a,b) = funName1()///带多个返回值的方法的调用
print(a,b)



/**
*  闭包就是在方法里面在写方法，和java一样
*/

