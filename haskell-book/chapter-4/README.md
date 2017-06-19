# Chapter 4 : Basic Data Types

## 4.1 Basic Datatypes

- Types are a powerful means of classifying, organizing, and delimiting data to only the forms we want to process in our programs. 
- Types provide the means to build programs more quickly and also allow for greater ease of maintenance.

## 4.2 Anatomy of a data declaration
**Data declarations** are how datatyles are defined
The *type constructor* is the name of the type and is capitalized.
Data constructors are the values that inhibit the type they are defined in. They are the values that show up in your code, at the term level incread of the type level.

Data declaration example :

```
-- the definition of Bool
data Bool = False | True 
```
- **Bool**: Type constructor for datatype Bool. This is the name of the type and shows up in type signatures
- **False** / **True**: Data constructor for the value False / True
- Pipe **|** indicates logical disjunction, "or". So, a Bool value is True or False.

Data declaration do no always follow precisely the same pattern - there are datatypes that use logical conjunction ("and") instead of disjunction, and some type constructors and data constructors may have arguments.

## 4.3 Numeric Types

### Integral Numbers
Whole numbers - positive and negative

- **Int** : This is a fixed-precision integer. By "fixed precision" we mean it has a range, with a maximum and a minimum, and so it cannot be arbitarily large or small
- **Integer** : This type is also for integers, but this one supports arbitrarily large (or small) numbers

### Fractional
These are not integers. Fractional numbers include the following four types.

1. **Float**:  This is the type used for single-precision floating point numbers.  Where fixed point number representations have immutable numbers of digits assigned for the parts of the number before and adter the decimal point, floating point can shift how many bits it uses to represent numbers before or after the decimal point. Floating point numbers should be used with great care

2. **Double** : This is a double precision floating point number type. It has twice as many biys with which to describe numbers as the Float type

3. **Rotational** : A fractional number that represents a ratio of two integers. 1/2 is an example of ```Rotational```, which is a value carrying two Integer values, the num 1 and the denom 2.

4. Scientific : This is a space efficient and almost-arbirary preision scientific number type. They are represented using scientific notation. It stores the coefficient as an Integer and the exponent as an Int. Since Int isnt arbiararily large, there is technically a limit to the size of number you can express with ```Scientific``` but hitting that limit is quite unlikely.

- These numeric datatypes all have instances of a typeclass called ```Num```
- Type classes are a way of adding functionality to types that is reusable across all the types that have instances of that typeclass