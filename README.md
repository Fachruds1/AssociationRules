# Recommendation Product Packaged with Market Basket Analysis — Association Rule
As we know in retail have many various item product sales and high growth new products for several time following the demand of market. This is good point for development sales and retail , so that it continue to grower and bigger. but it becomes a problem when there are more and more product items and the sales of some products are not selling too well so that it affects inventory problems. therefore innovation is needed in order to overcome the problem of storing product stock and also increase product sales.
One of the solution is innovation in the retail sector is to look for associations or relationships between products from transaction data sales which aims to products are packaged and sold together and give someone a product recommendation and more innovation to solve that problem. This process is an analytical process called Market Basket Analysis (MBA).

# Market Basket Analysis
Market Basket Analysis aims to find product package recommendations — based on unique patterns from customer transaction data — that can increase sales. The algorithm that can be used in R to do this MBA is apriori from the arules package . Arules is an abbreviation of association rules — a category of machine learning.
Principle of this model is actually looking for products that have a strong relationship or association in the transaction. The “strong” relationship here will be seen based on the proportion of the number of occurrences of the product combination that will be packaged with the total transactions.

# Case Study : Groceries Basket Analysis
Dataset was used in this case come from kaggle.com, name of dataset is “Groceries Dataset” and file provided it.
Groceries dataset includes 38,765 records and 3 columns: 
- Member_number : Member Number
- Date : Date of Transactions
- itemDescription : Item Products

We only use column member_number and itemDescription.

There are 167 distinct products and 3.898 ID transaction.

## Top 10 Seller
![alt](https://github.com/Fachruds1/AssociationRules/blob/main/top%2010.png)

# AssociationRules
In this case we use the Apriori algorithm in Arules library to mine frequent itemsets and association rules. So, we would set some parameters in this method that are supp = 0.01 and confidence =0.5, this parameter to return that have a support at least 1% and confidence at least 50%.

## Top 10 Set Rules
![alt](https://github.com/Fachruds1/AssociationRules/blob/main/10%20rules.jpg)

# Summary
Now, we can recomendation several product packaged based on top 10 rules above and implemented in retail. Then we can manage and arrange the sales shelves with the product combinations obtained. From top 10 rules data it can be seen that there are strong association between products that are in the top 10 best sellers and products that are not, such as whole milk and cake bars. So, from the result of set given in the model hopefully can increase sales of product cake bars and of course whole milk too so, we can reduce problem inventory too.
