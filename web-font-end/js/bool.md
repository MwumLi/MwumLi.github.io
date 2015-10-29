# 布尔值

2015-09-28 10:26:28 by MwumLi

---

布尔值只有 `true`、`false` 两种值  

> JavaScript 把 `null`、`undefined`、`0`、`NaN` 和空字符串 `''` 认作 `false`  
> 其他值一概认作 `true`  

## 布尔与逻辑运算  

js 支持三种逻辑运算 : `&&`(与)、`||`(或)、`!`(非)  

有以下三条规则 :  

1. 与运算 : 只有所有都为 `true`, 运算结果才是 `true`  
2. `||`或运算 : 只要其中有一个为 `true`, 运算结果就是 `||`  
3. `!`非运算 : 单目运算符, 把 `true` 变成 `false`, `false` 变成 `true`  


		true && true; // true
		true && false; // false
		false && true && true; // false
		false || false; // false
		true || false; // true
		false || true || false; // true
		!true; // false
		!false; // true


## 布尔与比较运算  

在条件判断中, 我们往往需要使用比较运算  
而比较运算的结果是布尔值  

因此, 布尔值经常用在条件判断中  

比较运算有这些 : `> < >= <= == ===`  

需要说的是 `==` 和 `===`  

1. `==` : 自动转换数据类型, 比较值  
2. `===` : 不会自动转换数据类型, 如果数据类型不一致, 返回 `false`; 如果一致, 再比较值  

### 关于浮点运算的比较  

浮点数在运算过程中会产生误差, 因为计算机无法精确表示无线循环小数  
要比较两个浮点数是否相等, 只能计算它们之差的绝对值, 看是否小于某个阀值(`0.0000001`)   

比如 :  

	1/3 === (1 - 2/3);		// false

可实际上, 在数学运算上它是正确的  
因此, 在我们的代码中应该这样写 :    

	Math.abs(1/3 -(1 - 2/3)) < 0.0000001;	// true

