
####Table of Contents


1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with hacks](#setup)
    * [What ora_rac affects](#what-hacks-affects)
    * [Setup requirements](#setup-requirements)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
    * [OS support](#os-support)
    * [Tests - Testing your configuration](#testing)

##Overview

This module contains some (one to start with) functions and custom types that are handy hacks in situations where puppet
leaves you in the dark.

##Module Description

This module contains hacks. Hacks are functions and custom types that you normally should not need. However, sometimes Puppet life can be harsh, and you need something out of the ordinary.

##Setup

To install the `hacks`use the follwoing command:

```
$ puppet module install hajee-hacks
```

###What does hacks affects

Absolutely nothing. You can install `hacks` free of risk next to existing modules.

###Setup Requirements

`Hacks` is a standalone module and doesn't need anything else.

##Usage

### set_variable function

The set_variable function allows you to set a variable in a different scope as the current scope. This is **bad programming**, but sometimes really handy.


`set_variable(scope, variable, value)`

`scope` - The scope where you want the variable defined. Use '::' for the top scope
`name`  - The variable name you want to define. Specify as a string including the $ sign
`value` - The value you want the variable to get.

This function adheres to all other restrictions of puppet variables. For example, you can't overwrite an existing variable.

##Limitations

 This module is tested on Centos with Puppet 3.6. It will probably work on other Linux distributions. It will definitely **not** work on Windows. I guess it works on Puppet 3.0 and higher. No guarantees though.

##Development

This is an open projects, and contributions are welcome.

###OS support

Currently we have tested:

* CentOS 5.10 Puppet 3.6

It would be great if we could get it working and tested on:

* Oracle 12
* Debian
* Ubuntu
* ....

###Puppet version support

Currently we have tested:

* Puppet V3.6-2

It would be great if we could get it working and tested on:

###Testing

No tests yet