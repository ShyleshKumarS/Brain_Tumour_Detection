╝г
ЦЗ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ч
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.11.02v2.11.0-rc2-15-g6290819256d8иЫ	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
t
Adam/v/fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/v/fc/bias
m
"Adam/v/fc/bias/Read/ReadVariableOpReadVariableOpAdam/v/fc/bias*
_output_shapes
:*
dtype0
t
Adam/m/fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/m/fc/bias
m
"Adam/m/fc/bias/Read/ReadVariableOpReadVariableOpAdam/m/fc/bias*
_output_shapes
:*
dtype0
~
Adam/v/fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ─*!
shared_nameAdam/v/fc/kernel
w
$Adam/v/fc/kernel/Read/ReadVariableOpReadVariableOpAdam/v/fc/kernel* 
_output_shapes
:
ђ─*
dtype0
~
Adam/m/fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ─*!
shared_nameAdam/m/fc/kernel
w
$Adam/m/fc/kernel/Read/ReadVariableOpReadVariableOpAdam/m/fc/kernel* 
_output_shapes
:
ђ─*
dtype0
w
Adam/v/bn1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ* 
shared_nameAdam/v/bn1/beta
p
#Adam/v/bn1/beta/Read/ReadVariableOpReadVariableOpAdam/v/bn1/beta*
_output_shapes	
:ђ*
dtype0
w
Adam/m/bn1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ* 
shared_nameAdam/m/bn1/beta
p
#Adam/m/bn1/beta/Read/ReadVariableOpReadVariableOpAdam/m/bn1/beta*
_output_shapes	
:ђ*
dtype0
y
Adam/v/bn1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*!
shared_nameAdam/v/bn1/gamma
r
$Adam/v/bn1/gamma/Read/ReadVariableOpReadVariableOpAdam/v/bn1/gamma*
_output_shapes	
:ђ*
dtype0
y
Adam/m/bn1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*!
shared_nameAdam/m/bn1/gamma
r
$Adam/m/bn1/gamma/Read/ReadVariableOpReadVariableOpAdam/m/bn1/gamma*
_output_shapes	
:ђ*
dtype0
{
Adam/v/conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameAdam/v/conv1/bias
t
%Adam/v/conv1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1/bias*
_output_shapes	
:ђ*
dtype0
{
Adam/m/conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameAdam/m/conv1/bias
t
%Adam/m/conv1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1/bias*
_output_shapes	
:ђ*
dtype0
І
Adam/v/conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*$
shared_nameAdam/v/conv1/kernel
ё
'Adam/v/conv1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1/kernel*'
_output_shapes
:@ђ*
dtype0
І
Adam/m/conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*$
shared_nameAdam/m/conv1/kernel
ё
'Adam/m/conv1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1/kernel*'
_output_shapes
:@ђ*
dtype0
v
Adam/v/bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameAdam/v/bn0/beta
o
#Adam/v/bn0/beta/Read/ReadVariableOpReadVariableOpAdam/v/bn0/beta*
_output_shapes
:@*
dtype0
v
Adam/m/bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameAdam/m/bn0/beta
o
#Adam/m/bn0/beta/Read/ReadVariableOpReadVariableOpAdam/m/bn0/beta*
_output_shapes
:@*
dtype0
x
Adam/v/bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/v/bn0/gamma
q
$Adam/v/bn0/gamma/Read/ReadVariableOpReadVariableOpAdam/v/bn0/gamma*
_output_shapes
:@*
dtype0
x
Adam/m/bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/m/bn0/gamma
q
$Adam/m/bn0/gamma/Read/ReadVariableOpReadVariableOpAdam/m/bn0/gamma*
_output_shapes
:@*
dtype0
z
Adam/v/conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/v/conv0/bias
s
%Adam/v/conv0/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv0/bias*
_output_shapes
:@*
dtype0
z
Adam/m/conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/m/conv0/bias
s
%Adam/m/conv0/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv0/bias*
_output_shapes
:@*
dtype0
і
Adam/v/conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/conv0/kernel
Ѓ
'Adam/v/conv0/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv0/kernel*&
_output_shapes
:@*
dtype0
і
Adam/m/conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/conv0/kernel
Ѓ
'Adam/m/conv0/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv0/kernel*&
_output_shapes
:@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
f
fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc/bias
_
fc/bias/Read/ReadVariableOpReadVariableOpfc/bias*
_output_shapes
:*
dtype0
p
	fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђ─*
shared_name	fc/kernel
i
fc/kernel/Read/ReadVariableOpReadVariableOp	fc/kernel* 
_output_shapes
:
ђ─*
dtype0

bn1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*$
shared_namebn1/moving_variance
x
'bn1/moving_variance/Read/ReadVariableOpReadVariableOpbn1/moving_variance*
_output_shapes	
:ђ*
dtype0
w
bn1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ* 
shared_namebn1/moving_mean
p
#bn1/moving_mean/Read/ReadVariableOpReadVariableOpbn1/moving_mean*
_output_shapes	
:ђ*
dtype0
i
bn1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_name
bn1/beta
b
bn1/beta/Read/ReadVariableOpReadVariableOpbn1/beta*
_output_shapes	
:ђ*
dtype0
k
	bn1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_name	bn1/gamma
d
bn1/gamma/Read/ReadVariableOpReadVariableOp	bn1/gamma*
_output_shapes	
:ђ*
dtype0
m

conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_name
conv1/bias
f
conv1/bias/Read/ReadVariableOpReadVariableOp
conv1/bias*
_output_shapes	
:ђ*
dtype0
}
conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*
shared_nameconv1/kernel
v
 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*'
_output_shapes
:@ђ*
dtype0
~
bn0/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namebn0/moving_variance
w
'bn0/moving_variance/Read/ReadVariableOpReadVariableOpbn0/moving_variance*
_output_shapes
:@*
dtype0
v
bn0/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namebn0/moving_mean
o
#bn0/moving_mean/Read/ReadVariableOpReadVariableOpbn0/moving_mean*
_output_shapes
:@*
dtype0
h
bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
bn0/beta
a
bn0/beta/Read/ReadVariableOpReadVariableOpbn0/beta*
_output_shapes
:@*
dtype0
j
	bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bn0/gamma
c
bn0/gamma/Read/ReadVariableOpReadVariableOp	bn0/gamma*
_output_shapes
:@*
dtype0
l

conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
conv0/bias
e
conv0/bias/Read/ReadVariableOpReadVariableOp
conv0/bias*
_output_shapes
:@*
dtype0
|
conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv0/kernel
u
 conv0/kernel/Read/ReadVariableOpReadVariableOpconv0/kernel*&
_output_shapes
:@*
dtype0
ј
serving_default_input_1Placeholder*1
_output_shapes
:         ­­*
dtype0*&
shape:         ­­
І
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_varianceconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_variance	fc/kernelfc/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_23922

NoOpNoOp
Ў^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*н]
value╩]BК] B└]
В
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
Н
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%axis
	&gamma
'beta
(moving_mean
)moving_variance*
ј
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
ј
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
╚
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op*
Н
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Eaxis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance*
ј
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses* 
ј
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
Ц
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator* 
ј
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
д
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias*
j
0
1
&2
'3
(4
)5
<6
=7
F8
G9
H10
I11
i12
j13*
J
0
1
&2
'3
<4
=5
F6
G7
i8
j9*
* 
░
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ptrace_0
qtrace_1
rtrace_2
strace_3* 
6
ttrace_0
utrace_1
vtrace_2
wtrace_3* 
* 
Ђ
x
_variables
y_iterations
z_learning_rate
{_index_dict
|
_momentums
}_velocities
~_update_step_xla*

serving_default* 

0
1*

0
1*
* 
ў
ђnon_trainable_variables
Ђlayers
ѓmetrics
 Ѓlayer_regularization_losses
ёlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ёtrace_0* 

єtrace_0* 
\V
VARIABLE_VALUEconv0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
&0
'1
(2
)3*

&0
'1*
* 
ў
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

їtrace_0
Їtrace_1* 

јtrace_0
Јtrace_1* 
* 
XR
VARIABLE_VALUE	bn0/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn0/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn0/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn0/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
љnon_trainable_variables
Љlayers
њmetrics
 Њlayer_regularization_losses
ћlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

Ћtrace_0* 

ќtrace_0* 
* 
* 
* 
ќ
Ќnon_trainable_variables
ўlayers
Ўmetrics
 џlayer_regularization_losses
Џlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

юtrace_0* 

Юtrace_0* 

<0
=1*

<0
=1*
* 
ў
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

Бtrace_0* 

цtrace_0* 
\V
VARIABLE_VALUEconv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
F0
G1
H2
I3*

F0
G1*
* 
ў
Цnon_trainable_variables
дlayers
Дmetrics
 еlayer_regularization_losses
Еlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

фtrace_0
Фtrace_1* 

гtrace_0
Гtrace_1* 
* 
XR
VARIABLE_VALUE	bn1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
«non_trainable_variables
»layers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

│trace_0* 

┤trace_0* 
* 
* 
* 
ќ
хnon_trainable_variables
Хlayers
иmetrics
 Иlayer_regularization_losses
╣layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

║trace_0* 

╗trace_0* 
* 
* 
* 
ќ
╝non_trainable_variables
йlayers
Йmetrics
 ┐layer_regularization_losses
└layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

┴trace_0
┬trace_1* 

├trace_0
─trace_1* 
* 
* 
* 
* 
ќ
┼non_trainable_variables
кlayers
Кmetrics
 ╚layer_regularization_losses
╔layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 

╩trace_0* 

╦trace_0* 

i0
j1*

i0
j1*
* 
ў
╠non_trainable_variables
═layers
╬metrics
 ¤layer_regularization_losses
лlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

Лtrace_0* 

мtrace_0* 
YS
VARIABLE_VALUE	fc/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEfc/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
(0
)1
H2
I3*
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

М0
н1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Х
y0
Н1
о2
О3
п4
┘5
┌6
█7
▄8
П9
я10
▀11
Я12
р13
Р14
с15
С16
т17
Т18
у19
У20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
Н0
О1
┘2
█3
П4
▀5
р6
с7
т8
у9*
T
о0
п1
┌2
▄3
я4
Я5
Р6
С7
Т8
У9*
* 
* 
* 
* 
* 
* 
* 
* 
* 

(0
)1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

H0
I1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ж	variables
Ж	keras_api

вtotal

Вcount*
M
ь	variables
Ь	keras_api

№total

­count
ы
_fn_kwargs*
^X
VARIABLE_VALUEAdam/m/conv0/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/conv0/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/conv0/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/conv0/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/bn0/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/bn0/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/m/bn0/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/bn0/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/conv1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv1/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv1/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv1/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/bn1/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/bn1/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/bn1/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/bn1/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/fc/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/fc/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/m/fc/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/fc/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*

в0
В1*

ж	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

№0
­1*

ь	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╩
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv0/kernel/Read/ReadVariableOpconv0/bias/Read/ReadVariableOpbn0/gamma/Read/ReadVariableOpbn0/beta/Read/ReadVariableOp#bn0/moving_mean/Read/ReadVariableOp'bn0/moving_variance/Read/ReadVariableOp conv1/kernel/Read/ReadVariableOpconv1/bias/Read/ReadVariableOpbn1/gamma/Read/ReadVariableOpbn1/beta/Read/ReadVariableOp#bn1/moving_mean/Read/ReadVariableOp'bn1/moving_variance/Read/ReadVariableOpfc/kernel/Read/ReadVariableOpfc/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp'Adam/m/conv0/kernel/Read/ReadVariableOp'Adam/v/conv0/kernel/Read/ReadVariableOp%Adam/m/conv0/bias/Read/ReadVariableOp%Adam/v/conv0/bias/Read/ReadVariableOp$Adam/m/bn0/gamma/Read/ReadVariableOp$Adam/v/bn0/gamma/Read/ReadVariableOp#Adam/m/bn0/beta/Read/ReadVariableOp#Adam/v/bn0/beta/Read/ReadVariableOp'Adam/m/conv1/kernel/Read/ReadVariableOp'Adam/v/conv1/kernel/Read/ReadVariableOp%Adam/m/conv1/bias/Read/ReadVariableOp%Adam/v/conv1/bias/Read/ReadVariableOp$Adam/m/bn1/gamma/Read/ReadVariableOp$Adam/v/bn1/gamma/Read/ReadVariableOp#Adam/m/bn1/beta/Read/ReadVariableOp#Adam/v/bn1/beta/Read/ReadVariableOp$Adam/m/fc/kernel/Read/ReadVariableOp$Adam/v/fc/kernel/Read/ReadVariableOp"Adam/m/fc/bias/Read/ReadVariableOp"Adam/v/fc/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*5
Tin.
,2*	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__traced_save_24514
Ц
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_varianceconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_variance	fc/kernelfc/bias	iterationlearning_rateAdam/m/conv0/kernelAdam/v/conv0/kernelAdam/m/conv0/biasAdam/v/conv0/biasAdam/m/bn0/gammaAdam/v/bn0/gammaAdam/m/bn0/betaAdam/v/bn0/betaAdam/m/conv1/kernelAdam/v/conv1/kernelAdam/m/conv1/biasAdam/v/conv1/biasAdam/m/bn1/gammaAdam/v/bn1/gammaAdam/m/bn1/betaAdam/v/bn1/betaAdam/m/fc/kernelAdam/v/fc/kernelAdam/m/fc/biasAdam/v/fc/biastotal_1count_1totalcount*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_24644Ї▒
╔
Ї
>__inference_bn1_layer_call_and_return_conditional_losses_24275

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
ф
E
)__inference_max_pool0_layer_call_fn_24207

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_23370Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ф
E
)__inference_max_pool1_layer_call_fn_24308

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_23446Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ж
џ
%__inference_conv0_layer_call_fn_24120

inputs!
unknown:@
	unknown_0:@
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_23466y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
╔
Ї
>__inference_bn1_layer_call_and_return_conditional_losses_23395

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
ї
`
D__inference_max_pool0_layer_call_and_return_conditional_losses_24212

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╣
Ѕ
>__inference_bn0_layer_call_and_return_conditional_losses_23319

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
з
Г
>__inference_bn0_layer_call_and_return_conditional_losses_24192

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Т
ю
%__inference_conv1_layer_call_fn_24221

inputs"
unknown:@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_23499x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ::ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ww@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ww@
 
_user_specified_nameinputs
╚
^
B__inference_flatten_layer_call_and_return_conditional_losses_24351

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђ─Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђ─"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ї
`
D__inference_max_pool0_layer_call_and_return_conditional_losses_23370

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ж
Й
#__inference_bn0_layer_call_fn_24156

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_23350Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ї
`
D__inference_max_pool1_layer_call_and_return_conditional_losses_24313

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
№
c
G__inference_activation_1_layer_call_and_return_conditional_losses_24303

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         ::ђc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         ::ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ::ђ:X T
0
_output_shapes
:         ::ђ
 
_user_specified_nameinputs
ї
`
D__inference_max_pool1_layer_call_and_return_conditional_losses_23446

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К

a
B__inference_dropout_layer_call_and_return_conditional_losses_23622

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         ђC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
з
­
3__inference_BrainDetectionModel_layer_call_fn_23586
input_1!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@ђ
	unknown_6:	ђ
	unknown_7:	ђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:
ђ─

unknown_12:
identityѕбStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23555o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
»
C
'__inference_flatten_layer_call_fn_24345

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_23535b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         ђ─"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ЃM
Ф
__inference__traced_save_24514
file_prefix+
'savev2_conv0_kernel_read_readvariableop)
%savev2_conv0_bias_read_readvariableop(
$savev2_bn0_gamma_read_readvariableop'
#savev2_bn0_beta_read_readvariableop.
*savev2_bn0_moving_mean_read_readvariableop2
.savev2_bn0_moving_variance_read_readvariableop+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop(
$savev2_bn1_gamma_read_readvariableop'
#savev2_bn1_beta_read_readvariableop.
*savev2_bn1_moving_mean_read_readvariableop2
.savev2_bn1_moving_variance_read_readvariableop(
$savev2_fc_kernel_read_readvariableop&
"savev2_fc_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop2
.savev2_adam_m_conv0_kernel_read_readvariableop2
.savev2_adam_v_conv0_kernel_read_readvariableop0
,savev2_adam_m_conv0_bias_read_readvariableop0
,savev2_adam_v_conv0_bias_read_readvariableop/
+savev2_adam_m_bn0_gamma_read_readvariableop/
+savev2_adam_v_bn0_gamma_read_readvariableop.
*savev2_adam_m_bn0_beta_read_readvariableop.
*savev2_adam_v_bn0_beta_read_readvariableop2
.savev2_adam_m_conv1_kernel_read_readvariableop2
.savev2_adam_v_conv1_kernel_read_readvariableop0
,savev2_adam_m_conv1_bias_read_readvariableop0
,savev2_adam_v_conv1_bias_read_readvariableop/
+savev2_adam_m_bn1_gamma_read_readvariableop/
+savev2_adam_v_bn1_gamma_read_readvariableop.
*savev2_adam_m_bn1_beta_read_readvariableop.
*savev2_adam_v_bn1_beta_read_readvariableop/
+savev2_adam_m_fc_kernel_read_readvariableop/
+savev2_adam_v_fc_kernel_read_readvariableop-
)savev2_adam_m_fc_bias_read_readvariableop-
)savev2_adam_v_fc_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ­
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ў
valueЈBї)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B а
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv0_kernel_read_readvariableop%savev2_conv0_bias_read_readvariableop$savev2_bn0_gamma_read_readvariableop#savev2_bn0_beta_read_readvariableop*savev2_bn0_moving_mean_read_readvariableop.savev2_bn0_moving_variance_read_readvariableop'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop$savev2_bn1_gamma_read_readvariableop#savev2_bn1_beta_read_readvariableop*savev2_bn1_moving_mean_read_readvariableop.savev2_bn1_moving_variance_read_readvariableop$savev2_fc_kernel_read_readvariableop"savev2_fc_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop.savev2_adam_m_conv0_kernel_read_readvariableop.savev2_adam_v_conv0_kernel_read_readvariableop,savev2_adam_m_conv0_bias_read_readvariableop,savev2_adam_v_conv0_bias_read_readvariableop+savev2_adam_m_bn0_gamma_read_readvariableop+savev2_adam_v_bn0_gamma_read_readvariableop*savev2_adam_m_bn0_beta_read_readvariableop*savev2_adam_v_bn0_beta_read_readvariableop.savev2_adam_m_conv1_kernel_read_readvariableop.savev2_adam_v_conv1_kernel_read_readvariableop,savev2_adam_m_conv1_bias_read_readvariableop,savev2_adam_v_conv1_bias_read_readvariableop+savev2_adam_m_bn1_gamma_read_readvariableop+savev2_adam_v_bn1_gamma_read_readvariableop*savev2_adam_m_bn1_beta_read_readvariableop*savev2_adam_v_bn1_beta_read_readvariableop+savev2_adam_m_fc_kernel_read_readvariableop+savev2_adam_v_fc_kernel_read_readvariableop)savev2_adam_m_fc_bias_read_readvariableop)savev2_adam_v_fc_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *7
dtypes-
+2)	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*┘
_input_shapesК
─: :@:@:@:@:@:@:@ђ:ђ:ђ:ђ:ђ:ђ:
ђ─:: : :@:@:@:@:@:@:@:@:@ђ:@ђ:ђ:ђ:ђ:ђ:ђ:ђ:
ђ─:
ђ─::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@ђ:!

_output_shapes	
:ђ:!	

_output_shapes	
:ђ:!


_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђ─: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@ђ:-)
'
_output_shapes
:@ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:! 

_output_shapes	
:ђ:&!"
 
_output_shapes
:
ђ─:&""
 
_output_shapes
:
ђ─: #

_output_shapes
:: $

_output_shapes
::%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: 
ћ-
░
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23735

inputs%
conv0_23695:@
conv0_23697:@
	bn0_23700:@
	bn0_23702:@
	bn0_23704:@
	bn0_23706:@&
conv1_23711:@ђ
conv1_23713:	ђ
	bn1_23716:	ђ
	bn1_23718:	ђ
	bn1_23720:	ђ
	bn1_23722:	ђ
fc_23729:
ђ─
fc_23731:
identityѕбbn0/StatefulPartitionedCallбbn1/StatefulPartitionedCallбconv0/StatefulPartitionedCallбconv1/StatefulPartitionedCallбdropout/StatefulPartitionedCallбfc/StatefulPartitionedCallв
conv0/StatefulPartitionedCallStatefulPartitionedCallinputsconv0_23695conv0_23697*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_23466Џ
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_23700	bn0_23702	bn0_23704	bn0_23706*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_23350с
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_23486я
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ww@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_23370є
conv1/StatefulPartitionedCallStatefulPartitionedCall"max_pool0/PartitionedCall:output:0conv1_23711conv1_23713*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_23499џ
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0	bn1_23716	bn1_23718	bn1_23720	bn1_23722*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_23426Т
activation_1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_23519р
max_pool1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_23446Ж
dropout/StatefulPartitionedCallStatefulPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_23622┘
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_23535№
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_23729fc_23731*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_23548r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ђ
NoOpNoOp^bn0/StatefulPartitionedCall^bn1/StatefulPartitionedCall^conv0/StatefulPartitionedCall^conv1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
ы
a
E__inference_activation_layer_call_and_return_conditional_losses_24202

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:         ЬЬ@d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:         ЬЬ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ@:Y U
1
_output_shapes
:         ЬЬ@
 
_user_specified_nameinputs
Џд
е
!__inference__traced_restore_24644
file_prefix7
assignvariableop_conv0_kernel:@+
assignvariableop_1_conv0_bias:@*
assignvariableop_2_bn0_gamma:@)
assignvariableop_3_bn0_beta:@0
"assignvariableop_4_bn0_moving_mean:@4
&assignvariableop_5_bn0_moving_variance:@:
assignvariableop_6_conv1_kernel:@ђ,
assignvariableop_7_conv1_bias:	ђ+
assignvariableop_8_bn1_gamma:	ђ*
assignvariableop_9_bn1_beta:	ђ2
#assignvariableop_10_bn1_moving_mean:	ђ6
'assignvariableop_11_bn1_moving_variance:	ђ1
assignvariableop_12_fc_kernel:
ђ─)
assignvariableop_13_fc_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: A
'assignvariableop_16_adam_m_conv0_kernel:@A
'assignvariableop_17_adam_v_conv0_kernel:@3
%assignvariableop_18_adam_m_conv0_bias:@3
%assignvariableop_19_adam_v_conv0_bias:@2
$assignvariableop_20_adam_m_bn0_gamma:@2
$assignvariableop_21_adam_v_bn0_gamma:@1
#assignvariableop_22_adam_m_bn0_beta:@1
#assignvariableop_23_adam_v_bn0_beta:@B
'assignvariableop_24_adam_m_conv1_kernel:@ђB
'assignvariableop_25_adam_v_conv1_kernel:@ђ4
%assignvariableop_26_adam_m_conv1_bias:	ђ4
%assignvariableop_27_adam_v_conv1_bias:	ђ3
$assignvariableop_28_adam_m_bn1_gamma:	ђ3
$assignvariableop_29_adam_v_bn1_gamma:	ђ2
#assignvariableop_30_adam_m_bn1_beta:	ђ2
#assignvariableop_31_adam_v_bn1_beta:	ђ8
$assignvariableop_32_adam_m_fc_kernel:
ђ─8
$assignvariableop_33_adam_v_fc_kernel:
ђ─0
"assignvariableop_34_adam_m_fc_bias:0
"assignvariableop_35_adam_v_fc_bias:%
assignvariableop_36_total_1: %
assignvariableop_37_count_1: #
assignvariableop_38_total: #
assignvariableop_39_count: 
identity_41ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9з
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ў
valueЈBї)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ь
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*║
_output_shapesД
ц:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:░
AssignVariableOpAssignVariableOpassignvariableop_conv0_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv0_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn0_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn0_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn0_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn0_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_12AssignVariableOpassignvariableop_12_fc_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_13AssignVariableOpassignvariableop_13_fc_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_m_conv0_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_v_conv0_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_m_conv0_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_19AssignVariableOp%assignvariableop_19_adam_v_conv0_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_20AssignVariableOp$assignvariableop_20_adam_m_bn0_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_21AssignVariableOp$assignvariableop_21_adam_v_bn0_gammaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_22AssignVariableOp#assignvariableop_22_adam_m_bn0_betaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_23AssignVariableOp#assignvariableop_23_adam_v_bn0_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_m_conv1_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_v_conv1_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_m_conv1_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_27AssignVariableOp%assignvariableop_27_adam_v_conv1_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_28AssignVariableOp$assignvariableop_28_adam_m_bn1_gammaIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_29AssignVariableOp$assignvariableop_29_adam_v_bn1_gammaIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_30AssignVariableOp#assignvariableop_30_adam_m_bn1_betaIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_31AssignVariableOp#assignvariableop_31_adam_v_bn1_betaIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_32AssignVariableOp$assignvariableop_32_adam_m_fc_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_33AssignVariableOp$assignvariableop_33_adam_v_fc_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_34AssignVariableOp"assignvariableop_34_adam_m_fc_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_35AssignVariableOp"assignvariableop_35_adam_v_fc_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_36AssignVariableOpassignvariableop_36_total_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_37AssignVariableOpassignvariableop_37_count_1Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_38AssignVariableOpassignvariableop_38_totalIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_39AssignVariableOpassignvariableop_39_countIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ┐
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: г
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
в
Й
#__inference_bn0_layer_call_fn_24143

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_23319Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
К
H
,__inference_activation_1_layer_call_fn_24298

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_23519i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ::ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ::ђ:X T
0
_output_shapes
:         ::ђ
 
_user_specified_nameinputs
щ
`
B__inference_dropout_layer_call_and_return_conditional_losses_23527

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         ђd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
­9
Ј

N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_24046

inputs>
$conv0_conv2d_readvariableop_resource:@3
%conv0_biasadd_readvariableop_resource:@)
bn0_readvariableop_resource:@+
bn0_readvariableop_1_resource:@:
,bn0_fusedbatchnormv3_readvariableop_resource:@<
.bn0_fusedbatchnormv3_readvariableop_1_resource:@?
$conv1_conv2d_readvariableop_resource:@ђ4
%conv1_biasadd_readvariableop_resource:	ђ*
bn1_readvariableop_resource:	ђ,
bn1_readvariableop_1_resource:	ђ;
,bn1_fusedbatchnormv3_readvariableop_resource:	ђ=
.bn1_fusedbatchnormv3_readvariableop_1_resource:	ђ5
!fc_matmul_readvariableop_resource:
ђ─0
"fc_biasadd_readvariableop_resource:
identityѕб#bn0/FusedBatchNormV3/ReadVariableOpб%bn0/FusedBatchNormV3/ReadVariableOp_1бbn0/ReadVariableOpбbn0/ReadVariableOp_1б#bn1/FusedBatchNormV3/ReadVariableOpб%bn1/FusedBatchNormV3/ReadVariableOp_1бbn1/ReadVariableOpбbn1/ReadVariableOp_1бconv0/BiasAdd/ReadVariableOpбconv0/Conv2D/ReadVariableOpбconv1/BiasAdd/ReadVariableOpбconv1/Conv2D/ReadVariableOpбfc/BiasAdd/ReadVariableOpбfc/MatMul/ReadVariableOpѕ
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0е
conv0/Conv2DConv2Dinputs#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@*
paddingVALID*
strides
~
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Љ
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@j
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource*
_output_shapes
:@*
dtype0n
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource*
_output_shapes
:@*
dtype0ї
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0љ
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0▄
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ@:@:@:@:@:*
epsilon%oЃ:*
is_training( m
activation/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ@е
max_pool0/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:         ww@*
ksize
*
paddingVALID*
strides
Ѕ
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0╗
conv1/Conv2DConv2Dmax_pool0/MaxPool:output:0#conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђ*
paddingVALID*
strides

conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0љ
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђk
bn1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0o
bn1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ї
#bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Љ
%bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0▀
bn1/FusedBatchNormV3FusedBatchNormV3conv1/BiasAdd:output:0bn1/ReadVariableOp:value:0bn1/ReadVariableOp_1:value:0+bn1/FusedBatchNormV3/ReadVariableOp:value:0-bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ::ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( n
activation_1/ReluRelubn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         ::ђФ
max_pool1/MaxPoolMaxPoolactivation_1/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
s
dropout/IdentityIdentitymax_pool1/MaxPool:output:0*
T0*0
_output_shapes
:         ђ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  Ђ
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─|
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype0Ђ
	fc/MatMulMatMulflatten/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         \

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
IdentityIdentityfc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         в
NoOpNoOp$^bn0/FusedBatchNormV3/ReadVariableOp&^bn0/FusedBatchNormV3/ReadVariableOp_1^bn0/ReadVariableOp^bn0/ReadVariableOp_1$^bn1/FusedBatchNormV3/ReadVariableOp&^bn1/FusedBatchNormV3/ReadVariableOp_1^bn1/ReadVariableOp^bn1/ReadVariableOp_1^conv0/BiasAdd/ReadVariableOp^conv0/Conv2D/ReadVariableOp^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^fc/BiasAdd/ReadVariableOp^fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 2J
#bn0/FusedBatchNormV3/ReadVariableOp#bn0/FusedBatchNormV3/ReadVariableOp2N
%bn0/FusedBatchNormV3/ReadVariableOp_1%bn0/FusedBatchNormV3/ReadVariableOp_12(
bn0/ReadVariableOpbn0/ReadVariableOp2,
bn0/ReadVariableOp_1bn0/ReadVariableOp_12J
#bn1/FusedBatchNormV3/ReadVariableOp#bn1/FusedBatchNormV3/ReadVariableOp2N
%bn1/FusedBatchNormV3/ReadVariableOp_1%bn1/FusedBatchNormV3/ReadVariableOp_12(
bn1/ReadVariableOpbn1/ReadVariableOp2,
bn1/ReadVariableOp_1bn1/ReadVariableOp_12<
conv0/BiasAdd/ReadVariableOpconv0/BiasAdd/ReadVariableOp2:
conv0/Conv2D/ReadVariableOpconv0/Conv2D/ReadVariableOp2<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp26
fc/BiasAdd/ReadVariableOpfc/BiasAdd/ReadVariableOp24
fc/MatMul/ReadVariableOpfc/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
К
F
*__inference_activation_layer_call_fn_24197

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_23486j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЬЬ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ@:Y U
1
_output_shapes
:         ЬЬ@
 
_user_specified_nameinputs
«

щ
@__inference_conv0_layer_call_and_return_conditional_losses_24130

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
В
№
3__inference_BrainDetectionModel_layer_call_fn_23988

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@ђ
	unknown_6:	ђ
	unknown_7:	ђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:
ђ─

unknown_12:
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
з
┬
#__inference_bn1_layer_call_fn_24244

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_23395і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
щ
`
B__inference_dropout_layer_call_and_return_conditional_losses_24328

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         ђd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ы
a
E__inference_activation_layer_call_and_return_conditional_losses_23486

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:         ЬЬ@d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:         ЬЬ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ@:Y U
1
_output_shapes
:         ЬЬ@
 
_user_specified_nameinputs
╝K
у

N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_24111

inputs>
$conv0_conv2d_readvariableop_resource:@3
%conv0_biasadd_readvariableop_resource:@)
bn0_readvariableop_resource:@+
bn0_readvariableop_1_resource:@:
,bn0_fusedbatchnormv3_readvariableop_resource:@<
.bn0_fusedbatchnormv3_readvariableop_1_resource:@?
$conv1_conv2d_readvariableop_resource:@ђ4
%conv1_biasadd_readvariableop_resource:	ђ*
bn1_readvariableop_resource:	ђ,
bn1_readvariableop_1_resource:	ђ;
,bn1_fusedbatchnormv3_readvariableop_resource:	ђ=
.bn1_fusedbatchnormv3_readvariableop_1_resource:	ђ5
!fc_matmul_readvariableop_resource:
ђ─0
"fc_biasadd_readvariableop_resource:
identityѕбbn0/AssignNewValueбbn0/AssignNewValue_1б#bn0/FusedBatchNormV3/ReadVariableOpб%bn0/FusedBatchNormV3/ReadVariableOp_1бbn0/ReadVariableOpбbn0/ReadVariableOp_1бbn1/AssignNewValueбbn1/AssignNewValue_1б#bn1/FusedBatchNormV3/ReadVariableOpб%bn1/FusedBatchNormV3/ReadVariableOp_1бbn1/ReadVariableOpбbn1/ReadVariableOp_1бconv0/BiasAdd/ReadVariableOpбconv0/Conv2D/ReadVariableOpбconv1/BiasAdd/ReadVariableOpбconv1/Conv2D/ReadVariableOpбfc/BiasAdd/ReadVariableOpбfc/MatMul/ReadVariableOpѕ
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0е
conv0/Conv2DConv2Dinputs#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@*
paddingVALID*
strides
~
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Љ
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@j
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource*
_output_shapes
:@*
dtype0n
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource*
_output_shapes
:@*
dtype0ї
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0љ
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ж
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ@:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<о
bn0/AssignNewValueAssignVariableOp,bn0_fusedbatchnormv3_readvariableop_resource!bn0/FusedBatchNormV3:batch_mean:0$^bn0/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Я
bn0/AssignNewValue_1AssignVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource%bn0/FusedBatchNormV3:batch_variance:0&^bn0/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(m
activation/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ@е
max_pool0/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:         ww@*
ksize
*
paddingVALID*
strides
Ѕ
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0╗
conv1/Conv2DConv2Dmax_pool0/MaxPool:output:0#conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђ*
paddingVALID*
strides

conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0љ
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђk
bn1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0o
bn1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ї
#bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Љ
%bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0ь
bn1/FusedBatchNormV3FusedBatchNormV3conv1/BiasAdd:output:0bn1/ReadVariableOp:value:0bn1/ReadVariableOp_1:value:0+bn1/FusedBatchNormV3/ReadVariableOp:value:0-bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ::ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<о
bn1/AssignNewValueAssignVariableOp,bn1_fusedbatchnormv3_readvariableop_resource!bn1/FusedBatchNormV3:batch_mean:0$^bn1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Я
bn1/AssignNewValue_1AssignVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource%bn1/FusedBatchNormV3:batch_variance:0&^bn1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(n
activation_1/ReluRelubn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         ::ђФ
max_pool1/MaxPoolMaxPoolactivation_1/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Љ
dropout/dropout/MulMulmax_pool1/MaxPool:output:0dropout/dropout/Const:output:0*
T0*0
_output_shapes
:         ђ_
dropout/dropout/ShapeShapemax_pool1/MaxPool:output:0*
T0*
_output_shapes
:Ц
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*0
_output_shapes
:         ђ*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?К
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ђ\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╝
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*0
_output_shapes
:         ђ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  Ѕ
flatten/ReshapeReshape!dropout/dropout/SelectV2:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─|
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype0Ђ
	fc/MatMulMatMulflatten/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         \

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
IdentityIdentityfc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ├
NoOpNoOp^bn0/AssignNewValue^bn0/AssignNewValue_1$^bn0/FusedBatchNormV3/ReadVariableOp&^bn0/FusedBatchNormV3/ReadVariableOp_1^bn0/ReadVariableOp^bn0/ReadVariableOp_1^bn1/AssignNewValue^bn1/AssignNewValue_1$^bn1/FusedBatchNormV3/ReadVariableOp&^bn1/FusedBatchNormV3/ReadVariableOp_1^bn1/ReadVariableOp^bn1/ReadVariableOp_1^conv0/BiasAdd/ReadVariableOp^conv0/Conv2D/ReadVariableOp^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^fc/BiasAdd/ReadVariableOp^fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 2(
bn0/AssignNewValuebn0/AssignNewValue2,
bn0/AssignNewValue_1bn0/AssignNewValue_12J
#bn0/FusedBatchNormV3/ReadVariableOp#bn0/FusedBatchNormV3/ReadVariableOp2N
%bn0/FusedBatchNormV3/ReadVariableOp_1%bn0/FusedBatchNormV3/ReadVariableOp_12(
bn0/ReadVariableOpbn0/ReadVariableOp2,
bn0/ReadVariableOp_1bn0/ReadVariableOp_12(
bn1/AssignNewValuebn1/AssignNewValue2,
bn1/AssignNewValue_1bn1/AssignNewValue_12J
#bn1/FusedBatchNormV3/ReadVariableOp#bn1/FusedBatchNormV3/ReadVariableOp2N
%bn1/FusedBatchNormV3/ReadVariableOp_1%bn1/FusedBatchNormV3/ReadVariableOp_12(
bn1/ReadVariableOpbn1/ReadVariableOp2,
bn1/ReadVariableOp_1bn1/ReadVariableOp_12<
conv0/BiasAdd/ReadVariableOpconv0/BiasAdd/ReadVariableOp2:
conv0/Conv2D/ReadVariableOpconv0/Conv2D/ReadVariableOp2<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp26
fc/BiasAdd/ReadVariableOpfc/BiasAdd/ReadVariableOp24
fc/MatMul/ReadVariableOpfc/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Ј
`
'__inference_dropout_layer_call_fn_24323

inputs
identityѕбStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_23622x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
«

щ
@__inference_conv0_layer_call_and_return_conditional_losses_23466

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ­­: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Ѓ
▒
>__inference_bn1_layer_call_and_return_conditional_losses_23426

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
К

a
B__inference_dropout_layer_call_and_return_conditional_losses_24340

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         ђC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ћ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?»
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
№
c
G__inference_activation_1_layer_call_and_return_conditional_losses_23519

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         ::ђc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         ::ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ::ђ:X T
0
_output_shapes
:         ::ђ
 
_user_specified_nameinputs
з
Г
>__inference_bn0_layer_call_and_return_conditional_losses_23350

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ф

ч
@__inference_conv1_layer_call_and_return_conditional_losses_23499

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ::ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ww@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ww@
 
_user_specified_nameinputs
Џ

­
=__inference_fc_layer_call_and_return_conditional_losses_24371

inputs2
matmul_readvariableop_resource:
ђ─-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
Ф

ч
@__inference_conv1_layer_call_and_return_conditional_losses_24231

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ::ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ww@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ww@
 
_user_specified_nameinputs
Ќ-
▒
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23885
input_1%
conv0_23845:@
conv0_23847:@
	bn0_23850:@
	bn0_23852:@
	bn0_23854:@
	bn0_23856:@&
conv1_23861:@ђ
conv1_23863:	ђ
	bn1_23866:	ђ
	bn1_23868:	ђ
	bn1_23870:	ђ
	bn1_23872:	ђ
fc_23879:
ђ─
fc_23881:
identityѕбbn0/StatefulPartitionedCallбbn1/StatefulPartitionedCallбconv0/StatefulPartitionedCallбconv1/StatefulPartitionedCallбdropout/StatefulPartitionedCallбfc/StatefulPartitionedCallВ
conv0/StatefulPartitionedCallStatefulPartitionedCallinput_1conv0_23845conv0_23847*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_23466Џ
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_23850	bn0_23852	bn0_23854	bn0_23856*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_23350с
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_23486я
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ww@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_23370є
conv1/StatefulPartitionedCallStatefulPartitionedCall"max_pool0/PartitionedCall:output:0conv1_23861conv1_23863*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_23499џ
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0	bn1_23866	bn1_23868	bn1_23870	bn1_23872*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_23426Т
activation_1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_23519р
max_pool1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_23446Ж
dropout/StatefulPartitionedCallStatefulPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_23622┘
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_23535№
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_23879fc_23881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_23548r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ђ
NoOpNoOp^bn0/StatefulPartitionedCall^bn1/StatefulPartitionedCall^conv0/StatefulPartitionedCall^conv1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
ы
┬
#__inference_bn1_layer_call_fn_24257

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_23426і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
╚
^
B__inference_flatten_layer_call_and_return_conditional_losses_23535

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђ─Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђ─"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ѓ
▒
>__inference_bn1_layer_call_and_return_conditional_losses_24293

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
Э+
ј
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23555

inputs%
conv0_23467:@
conv0_23469:@
	bn0_23472:@
	bn0_23474:@
	bn0_23476:@
	bn0_23478:@&
conv1_23500:@ђ
conv1_23502:	ђ
	bn1_23505:	ђ
	bn1_23507:	ђ
	bn1_23509:	ђ
	bn1_23511:	ђ
fc_23549:
ђ─
fc_23551:
identityѕбbn0/StatefulPartitionedCallбbn1/StatefulPartitionedCallбconv0/StatefulPartitionedCallбconv1/StatefulPartitionedCallбfc/StatefulPartitionedCallв
conv0/StatefulPartitionedCallStatefulPartitionedCallinputsconv0_23467conv0_23469*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_23466Ю
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_23472	bn0_23474	bn0_23476	bn0_23478*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_23319с
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_23486я
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ww@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_23370є
conv1/StatefulPartitionedCallStatefulPartitionedCall"max_pool0/PartitionedCall:output:0conv1_23500conv1_23502*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_23499ю
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0	bn1_23505	bn1_23507	bn1_23509	bn1_23511*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_23395Т
activation_1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_23519р
max_pool1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_23446┌
dropout/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_23527Л
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_23535№
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_23549fc_23551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_23548r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▀
NoOpNoOp^bn0/StatefulPartitionedCall^bn1/StatefulPartitionedCall^conv0/StatefulPartitionedCall^conv1/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
ч+
Ј
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23842
input_1%
conv0_23802:@
conv0_23804:@
	bn0_23807:@
	bn0_23809:@
	bn0_23811:@
	bn0_23813:@&
conv1_23818:@ђ
conv1_23820:	ђ
	bn1_23823:	ђ
	bn1_23825:	ђ
	bn1_23827:	ђ
	bn1_23829:	ђ
fc_23836:
ђ─
fc_23838:
identityѕбbn0/StatefulPartitionedCallбbn1/StatefulPartitionedCallбconv0/StatefulPartitionedCallбconv1/StatefulPartitionedCallбfc/StatefulPartitionedCallВ
conv0/StatefulPartitionedCallStatefulPartitionedCallinput_1conv0_23802conv0_23804*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_23466Ю
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_23807	bn0_23809	bn0_23811	bn0_23813*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_23319с
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_23486я
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ww@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_23370є
conv1/StatefulPartitionedCallStatefulPartitionedCall"max_pool0/PartitionedCall:output:0conv1_23818conv1_23820*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_23499ю
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0	bn1_23823	bn1_23825	bn1_23827	bn1_23829*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_23395Т
activation_1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ::ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_23519р
max_pool1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_23446┌
dropout/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_23527Л
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђ─* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_23535№
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_23836fc_23838*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_23548r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▀
NoOpNoOp^bn0/StatefulPartitionedCall^bn1/StatefulPartitionedCall^conv0/StatefulPartitionedCall^conv1/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
њP
њ
 __inference__wrapped_model_23297
input_1R
8braindetectionmodel_conv0_conv2d_readvariableop_resource:@G
9braindetectionmodel_conv0_biasadd_readvariableop_resource:@=
/braindetectionmodel_bn0_readvariableop_resource:@?
1braindetectionmodel_bn0_readvariableop_1_resource:@N
@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource:@P
Bbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource:@S
8braindetectionmodel_conv1_conv2d_readvariableop_resource:@ђH
9braindetectionmodel_conv1_biasadd_readvariableop_resource:	ђ>
/braindetectionmodel_bn1_readvariableop_resource:	ђ@
1braindetectionmodel_bn1_readvariableop_1_resource:	ђO
@braindetectionmodel_bn1_fusedbatchnormv3_readvariableop_resource:	ђQ
Bbraindetectionmodel_bn1_fusedbatchnormv3_readvariableop_1_resource:	ђI
5braindetectionmodel_fc_matmul_readvariableop_resource:
ђ─D
6braindetectionmodel_fc_biasadd_readvariableop_resource:
identityѕб7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpб9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1б&BrainDetectionModel/bn0/ReadVariableOpб(BrainDetectionModel/bn0/ReadVariableOp_1б7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOpб9BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1б&BrainDetectionModel/bn1/ReadVariableOpб(BrainDetectionModel/bn1/ReadVariableOp_1б0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpб/BrainDetectionModel/conv0/Conv2D/ReadVariableOpб0BrainDetectionModel/conv1/BiasAdd/ReadVariableOpб/BrainDetectionModel/conv1/Conv2D/ReadVariableOpб-BrainDetectionModel/fc/BiasAdd/ReadVariableOpб,BrainDetectionModel/fc/MatMul/ReadVariableOp░
/BrainDetectionModel/conv0/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv0_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Л
 BrainDetectionModel/conv0/Conv2DConv2Dinput_17BrainDetectionModel/conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@*
paddingVALID*
strides
д
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0═
!BrainDetectionModel/conv0/BiasAddBiasAdd)BrainDetectionModel/conv0/Conv2D:output:08BrainDetectionModel/conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ@њ
&BrainDetectionModel/bn0/ReadVariableOpReadVariableOp/braindetectionmodel_bn0_readvariableop_resource*
_output_shapes
:@*
dtype0ќ
(BrainDetectionModel/bn0/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn0_readvariableop_1_resource*
_output_shapes
:@*
dtype0┤
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0н
(BrainDetectionModel/bn0/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv0/BiasAdd:output:0.BrainDetectionModel/bn0/ReadVariableOp:value:00BrainDetectionModel/bn0/ReadVariableOp_1:value:0?BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ@:@:@:@:@:*
epsilon%oЃ:*
is_training( Ћ
#BrainDetectionModel/activation/ReluRelu,BrainDetectionModel/bn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ@л
%BrainDetectionModel/max_pool0/MaxPoolMaxPool1BrainDetectionModel/activation/Relu:activations:0*/
_output_shapes
:         ww@*
ksize
*
paddingVALID*
strides
▒
/BrainDetectionModel/conv1/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0э
 BrainDetectionModel/conv1/Conv2DConv2D.BrainDetectionModel/max_pool0/MaxPool:output:07BrainDetectionModel/conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђ*
paddingVALID*
strides
Д
0BrainDetectionModel/conv1/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╠
!BrainDetectionModel/conv1/BiasAddBiasAdd)BrainDetectionModel/conv1/Conv2D:output:08BrainDetectionModel/conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ::ђЊ
&BrainDetectionModel/bn1/ReadVariableOpReadVariableOp/braindetectionmodel_bn1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ќ
(BrainDetectionModel/bn1/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn1_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0х
7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╣
9BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0О
(BrainDetectionModel/bn1/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv1/BiasAdd:output:0.BrainDetectionModel/bn1/ReadVariableOp:value:00BrainDetectionModel/bn1/ReadVariableOp_1:value:0?BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ::ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ќ
%BrainDetectionModel/activation_1/ReluRelu,BrainDetectionModel/bn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         ::ђМ
%BrainDetectionModel/max_pool1/MaxPoolMaxPool3BrainDetectionModel/activation_1/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
Џ
$BrainDetectionModel/dropout/IdentityIdentity.BrainDetectionModel/max_pool1/MaxPool:output:0*
T0*0
_output_shapes
:         ђr
!BrainDetectionModel/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     b  й
#BrainDetectionModel/flatten/ReshapeReshape-BrainDetectionModel/dropout/Identity:output:0*BrainDetectionModel/flatten/Const:output:0*
T0*)
_output_shapes
:         ђ─ц
,BrainDetectionModel/fc/MatMul/ReadVariableOpReadVariableOp5braindetectionmodel_fc_matmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype0й
BrainDetectionModel/fc/MatMulMatMul,BrainDetectionModel/flatten/Reshape:output:04BrainDetectionModel/fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-BrainDetectionModel/fc/BiasAdd/ReadVariableOpReadVariableOp6braindetectionmodel_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
BrainDetectionModel/fc/BiasAddBiasAdd'BrainDetectionModel/fc/MatMul:product:05BrainDetectionModel/fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
BrainDetectionModel/fc/SigmoidSigmoid'BrainDetectionModel/fc/BiasAdd:output:0*
T0*'
_output_shapes
:         q
IdentityIdentity"BrainDetectionModel/fc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Ѓ
NoOpNoOp8^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn0/ReadVariableOp)^BrainDetectionModel/bn0/ReadVariableOp_18^BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn1/ReadVariableOp)^BrainDetectionModel/bn1/ReadVariableOp_11^BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv0/Conv2D/ReadVariableOp1^BrainDetectionModel/conv1/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv1/Conv2D/ReadVariableOp.^BrainDetectionModel/fc/BiasAdd/ReadVariableOp-^BrainDetectionModel/fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 2r
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp2v
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_12P
&BrainDetectionModel/bn0/ReadVariableOp&BrainDetectionModel/bn0/ReadVariableOp2T
(BrainDetectionModel/bn0/ReadVariableOp_1(BrainDetectionModel/bn0/ReadVariableOp_12r
7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp2v
9BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_12P
&BrainDetectionModel/bn1/ReadVariableOp&BrainDetectionModel/bn1/ReadVariableOp2T
(BrainDetectionModel/bn1/ReadVariableOp_1(BrainDetectionModel/bn1/ReadVariableOp_12d
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv0/Conv2D/ReadVariableOp/BrainDetectionModel/conv0/Conv2D/ReadVariableOp2d
0BrainDetectionModel/conv1/BiasAdd/ReadVariableOp0BrainDetectionModel/conv1/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv1/Conv2D/ReadVariableOp/BrainDetectionModel/conv1/Conv2D/ReadVariableOp2^
-BrainDetectionModel/fc/BiasAdd/ReadVariableOp-BrainDetectionModel/fc/BiasAdd/ReadVariableOp2\
,BrainDetectionModel/fc/MatMul/ReadVariableOp,BrainDetectionModel/fc/MatMul/ReadVariableOp:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
х
Я
#__inference_signature_wrapper_23922
input_1!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@ђ
	unknown_6:	ђ
	unknown_7:	ђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:
ђ─

unknown_12:
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_23297o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
║
Љ
"__inference_fc_layer_call_fn_24360

inputs
unknown:
ђ─
	unknown_0:
identityѕбStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_23548o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
Џ

­
=__inference_fc_layer_call_and_return_conditional_losses_23548

inputs2
matmul_readvariableop_resource:
ђ─-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђ─*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђ─: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђ─
 
_user_specified_nameinputs
№
­
3__inference_BrainDetectionModel_layer_call_fn_23799
input_1!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@ђ
	unknown_6:	ђ
	unknown_7:	ђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:
ђ─

unknown_12:
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
­
№
3__inference_BrainDetectionModel_layer_call_fn_23955

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@ђ
	unknown_6:	ђ
	unknown_7:	ђ
	unknown_8:	ђ
	unknown_9:	ђ

unknown_10:	ђ

unknown_11:
ђ─

unknown_12:
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23555o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         ­­: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
╣
Ѕ
>__inference_bn0_layer_call_and_return_conditional_losses_24174

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
й
C
'__inference_dropout_layer_call_fn_24318

inputs
identityХ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_23527i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs"є
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_defaultЏ
E
input_1:
serving_default_input_1:0         ­­6
fc0
StatefulPartitionedCall:0         tensorflow/serving/predict:За
Ѓ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ж
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%axis
	&gamma
'beta
(moving_mean
)moving_variance"
_tf_keras_layer
Ц
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
П
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op"
_tf_keras_layer
Ж
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Eaxis
	Fgamma
Gbeta
Hmoving_mean
Imoving_variance"
_tf_keras_layer
Ц
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator"
_tf_keras_layer
Ц
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias"
_tf_keras_layer
є
0
1
&2
'3
(4
)5
<6
=7
F8
G9
H10
I11
i12
j13"
trackable_list_wrapper
f
0
1
&2
'3
<4
=5
F6
G7
i8
j9"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ђ
ptrace_0
qtrace_1
rtrace_2
strace_32ќ
3__inference_BrainDetectionModel_layer_call_fn_23586
3__inference_BrainDetectionModel_layer_call_fn_23955
3__inference_BrainDetectionModel_layer_call_fn_23988
3__inference_BrainDetectionModel_layer_call_fn_23799┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zptrace_0zqtrace_1zrtrace_2zstrace_3
ь
ttrace_0
utrace_1
vtrace_2
wtrace_32ѓ
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_24046
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_24111
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23842
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23885┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zttrace_0zutrace_1zvtrace_2zwtrace_3
╦B╚
 __inference__wrapped_model_23297input_1"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю
x
_variables
y_iterations
z_learning_rate
{_index_dict
|
_momentums
}_velocities
~_update_step_xla"
experimentalOptimizer
,
serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ђnon_trainable_variables
Ђlayers
ѓmetrics
 Ѓlayer_regularization_losses
ёlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
в
Ёtrace_02╠
%__inference_conv0_layer_call_fn_24120б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЁtrace_0
є
єtrace_02у
@__inference_conv0_layer_call_and_return_conditional_losses_24130б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zєtrace_0
&:$@2conv0/kernel
:@2
conv0/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
&0
'1
(2
)3"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
╗
їtrace_0
Їtrace_12ђ
#__inference_bn0_layer_call_fn_24143
#__inference_bn0_layer_call_fn_24156│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zїtrace_0zЇtrace_1
ы
јtrace_0
Јtrace_12Х
>__inference_bn0_layer_call_and_return_conditional_losses_24174
>__inference_bn0_layer_call_and_return_conditional_losses_24192│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zјtrace_0zЈtrace_1
 "
trackable_list_wrapper
:@2	bn0/gamma
:@2bn0/beta
:@ (2bn0/moving_mean
#:!@ (2bn0/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
љnon_trainable_variables
Љlayers
њmetrics
 Њlayer_regularization_losses
ћlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
­
Ћtrace_02Л
*__inference_activation_layer_call_fn_24197б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЋtrace_0
І
ќtrace_02В
E__inference_activation_layer_call_and_return_conditional_losses_24202б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zќtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ќnon_trainable_variables
ўlayers
Ўmetrics
 џlayer_regularization_losses
Џlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
№
юtrace_02л
)__inference_max_pool0_layer_call_fn_24207б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zюtrace_0
і
Юtrace_02в
D__inference_max_pool0_layer_call_and_return_conditional_losses_24212б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЮtrace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
в
Бtrace_02╠
%__inference_conv1_layer_call_fn_24221б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zБtrace_0
є
цtrace_02у
@__inference_conv1_layer_call_and_return_conditional_losses_24231б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zцtrace_0
':%@ђ2conv1/kernel
:ђ2
conv1/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
F0
G1
H2
I3"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Цnon_trainable_variables
дlayers
Дmetrics
 еlayer_regularization_losses
Еlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
╗
фtrace_0
Фtrace_12ђ
#__inference_bn1_layer_call_fn_24244
#__inference_bn1_layer_call_fn_24257│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zфtrace_0zФtrace_1
ы
гtrace_0
Гtrace_12Х
>__inference_bn1_layer_call_and_return_conditional_losses_24275
>__inference_bn1_layer_call_and_return_conditional_losses_24293│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zгtrace_0zГtrace_1
 "
trackable_list_wrapper
:ђ2	bn1/gamma
:ђ2bn1/beta
 :ђ (2bn1/moving_mean
$:"ђ (2bn1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
«non_trainable_variables
»layers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
Ы
│trace_02М
,__inference_activation_1_layer_call_fn_24298б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z│trace_0
Ї
┤trace_02Ь
G__inference_activation_1_layer_call_and_return_conditional_losses_24303б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┤trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
хnon_trainable_variables
Хlayers
иmetrics
 Иlayer_regularization_losses
╣layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
№
║trace_02л
)__inference_max_pool1_layer_call_fn_24308б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z║trace_0
і
╗trace_02в
D__inference_max_pool1_layer_call_and_return_conditional_losses_24313б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╗trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
йlayers
Йmetrics
 ┐layer_regularization_losses
└layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
├
┴trace_0
┬trace_12ѕ
'__inference_dropout_layer_call_fn_24318
'__inference_dropout_layer_call_fn_24323│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┴trace_0z┬trace_1
щ
├trace_0
─trace_12Й
B__inference_dropout_layer_call_and_return_conditional_losses_24328
B__inference_dropout_layer_call_and_return_conditional_losses_24340│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z├trace_0z─trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┼non_trainable_variables
кlayers
Кmetrics
 ╚layer_regularization_losses
╔layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
ь
╩trace_02╬
'__inference_flatten_layer_call_fn_24345б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╩trace_0
ѕ
╦trace_02ж
B__inference_flatten_layer_call_and_return_conditional_losses_24351б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╦trace_0
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╠non_trainable_variables
═layers
╬metrics
 ¤layer_regularization_losses
лlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
У
Лtrace_02╔
"__inference_fc_layer_call_fn_24360б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЛtrace_0
Ѓ
мtrace_02С
=__inference_fc_layer_call_and_return_conditional_losses_24371б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zмtrace_0
:
ђ─2	fc/kernel
:2fc/bias
<
(0
)1
H2
I3"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
М0
н1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBѓ
3__inference_BrainDetectionModel_layer_call_fn_23586input_1"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
3__inference_BrainDetectionModel_layer_call_fn_23955inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
3__inference_BrainDetectionModel_layer_call_fn_23988inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
3__inference_BrainDetectionModel_layer_call_fn_23799input_1"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_24046inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_24111inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23842input_1"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23885input_1"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м
y0
Н1
о2
О3
п4
┘5
┌6
█7
▄8
П9
я10
▀11
Я12
р13
Р14
с15
С16
т17
Т18
у19
У20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
Н0
О1
┘2
█3
П4
▀5
р6
с7
т8
у9"
trackable_list_wrapper
p
о0
п1
┌2
▄3
я4
Я5
Р6
С7
Т8
У9"
trackable_list_wrapper
┐2╝╣
«▓ф
FullArgSpec2
args*џ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
╩BК
#__inference_signature_wrapper_23922input_1"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┘Bо
%__inference_conv0_layer_call_fn_24120inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
@__inference_conv0_layer_call_and_return_conditional_losses_24130inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
УBт
#__inference_bn0_layer_call_fn_24143inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
УBт
#__inference_bn0_layer_call_fn_24156inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
>__inference_bn0_layer_call_and_return_conditional_losses_24174inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
>__inference_bn0_layer_call_and_return_conditional_losses_24192inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB█
*__inference_activation_layer_call_fn_24197inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
щBШ
E__inference_activation_layer_call_and_return_conditional_losses_24202inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПB┌
)__inference_max_pool0_layer_call_fn_24207inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_max_pool0_layer_call_and_return_conditional_losses_24212inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┘Bо
%__inference_conv1_layer_call_fn_24221inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
@__inference_conv1_layer_call_and_return_conditional_losses_24231inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
УBт
#__inference_bn1_layer_call_fn_24244inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
УBт
#__inference_bn1_layer_call_fn_24257inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
>__inference_bn1_layer_call_and_return_conditional_losses_24275inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
>__inference_bn1_layer_call_and_return_conditional_losses_24293inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBП
,__inference_activation_1_layer_call_fn_24298inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
G__inference_activation_1_layer_call_and_return_conditional_losses_24303inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПB┌
)__inference_max_pool1_layer_call_fn_24308inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_max_pool1_layer_call_and_return_conditional_losses_24313inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ВBж
'__inference_dropout_layer_call_fn_24318inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
'__inference_dropout_layer_call_fn_24323inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЄBё
B__inference_dropout_layer_call_and_return_conditional_losses_24328inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЄBё
B__inference_dropout_layer_call_and_return_conditional_losses_24340inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
█Bп
'__inference_flatten_layer_call_fn_24345inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
B__inference_flatten_layer_call_and_return_conditional_losses_24351inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBМ
"__inference_fc_layer_call_fn_24360inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
=__inference_fc_layer_call_and_return_conditional_losses_24371inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
ж	variables
Ж	keras_api

вtotal

Вcount"
_tf_keras_metric
c
ь	variables
Ь	keras_api

№total

­count
ы
_fn_kwargs"
_tf_keras_metric
+:)@2Adam/m/conv0/kernel
+:)@2Adam/v/conv0/kernel
:@2Adam/m/conv0/bias
:@2Adam/v/conv0/bias
:@2Adam/m/bn0/gamma
:@2Adam/v/bn0/gamma
:@2Adam/m/bn0/beta
:@2Adam/v/bn0/beta
,:*@ђ2Adam/m/conv1/kernel
,:*@ђ2Adam/v/conv1/kernel
:ђ2Adam/m/conv1/bias
:ђ2Adam/v/conv1/bias
:ђ2Adam/m/bn1/gamma
:ђ2Adam/v/bn1/gamma
:ђ2Adam/m/bn1/beta
:ђ2Adam/v/bn1/beta
": 
ђ─2Adam/m/fc/kernel
": 
ђ─2Adam/v/fc/kernel
:2Adam/m/fc/bias
:2Adam/v/fc/bias
0
в0
В1"
trackable_list_wrapper
.
ж	variables"
_generic_user_object
:  (2total
:  (2count
0
№0
­1"
trackable_list_wrapper
.
ь	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperН
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23842ѓ&'()<=FGHIijBб?
8б5
+і(
input_1         ­­
p 

 
ф ",б)
"і
tensor_0         
џ Н
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_23885ѓ&'()<=FGHIijBб?
8б5
+і(
input_1         ­­
p

 
ф ",б)
"і
tensor_0         
џ н
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_24046Ђ&'()<=FGHIijAб>
7б4
*і'
inputs         ­­
p 

 
ф ",б)
"і
tensor_0         
џ н
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_24111Ђ&'()<=FGHIijAб>
7б4
*і'
inputs         ­­
p

 
ф ",б)
"і
tensor_0         
џ «
3__inference_BrainDetectionModel_layer_call_fn_23586w&'()<=FGHIijBб?
8б5
+і(
input_1         ­­
p 

 
ф "!і
unknown         «
3__inference_BrainDetectionModel_layer_call_fn_23799w&'()<=FGHIijBб?
8б5
+і(
input_1         ­­
p

 
ф "!і
unknown         Г
3__inference_BrainDetectionModel_layer_call_fn_23955v&'()<=FGHIijAб>
7б4
*і'
inputs         ­­
p 

 
ф "!і
unknown         Г
3__inference_BrainDetectionModel_layer_call_fn_23988v&'()<=FGHIijAб>
7б4
*і'
inputs         ­­
p

 
ф "!і
unknown         Ў
 __inference__wrapped_model_23297u&'()<=FGHIij:б7
0б-
+і(
input_1         ­­
ф "'ф$
"
fcі
fc         ╝
G__inference_activation_1_layer_call_and_return_conditional_losses_24303q8б5
.б+
)і&
inputs         ::ђ
ф "5б2
+і(
tensor_0         ::ђ
џ ќ
,__inference_activation_1_layer_call_fn_24298f8б5
.б+
)і&
inputs         ::ђ
ф "*і'
unknown         ::ђ╝
E__inference_activation_layer_call_and_return_conditional_losses_24202s9б6
/б,
*і'
inputs         ЬЬ@
ф "6б3
,і)
tensor_0         ЬЬ@
џ ќ
*__inference_activation_layer_call_fn_24197h9б6
/б,
*і'
inputs         ЬЬ@
ф "+і(
unknown         ЬЬ@Я
>__inference_bn0_layer_call_and_return_conditional_losses_24174Ю&'()MбJ
Cб@
:і7
inputs+                           @
p 
ф "FбC
<і9
tensor_0+                           @
џ Я
>__inference_bn0_layer_call_and_return_conditional_losses_24192Ю&'()MбJ
Cб@
:і7
inputs+                           @
p
ф "FбC
<і9
tensor_0+                           @
џ ║
#__inference_bn0_layer_call_fn_24143њ&'()MбJ
Cб@
:і7
inputs+                           @
p 
ф ";і8
unknown+                           @║
#__inference_bn0_layer_call_fn_24156њ&'()MбJ
Cб@
:і7
inputs+                           @
p
ф ";і8
unknown+                           @Р
>__inference_bn1_layer_call_and_return_conditional_losses_24275ЪFGHINбK
DбA
;і8
inputs,                           ђ
p 
ф "GбD
=і:
tensor_0,                           ђ
џ Р
>__inference_bn1_layer_call_and_return_conditional_losses_24293ЪFGHINбK
DбA
;і8
inputs,                           ђ
p
ф "GбD
=і:
tensor_0,                           ђ
џ ╝
#__inference_bn1_layer_call_fn_24244ћFGHINбK
DбA
;і8
inputs,                           ђ
p 
ф "<і9
unknown,                           ђ╝
#__inference_bn1_layer_call_fn_24257ћFGHINбK
DбA
;і8
inputs,                           ђ
p
ф "<і9
unknown,                           ђ╗
@__inference_conv0_layer_call_and_return_conditional_losses_24130w9б6
/б,
*і'
inputs         ­­
ф "6б3
,і)
tensor_0         ЬЬ@
џ Ћ
%__inference_conv0_layer_call_fn_24120l9б6
/б,
*і'
inputs         ­­
ф "+і(
unknown         ЬЬ@И
@__inference_conv1_layer_call_and_return_conditional_losses_24231t<=7б4
-б*
(і%
inputs         ww@
ф "5б2
+і(
tensor_0         ::ђ
џ њ
%__inference_conv1_layer_call_fn_24221i<=7б4
-б*
(і%
inputs         ww@
ф "*і'
unknown         ::ђ╗
B__inference_dropout_layer_call_and_return_conditional_losses_24328u<б9
2б/
)і&
inputs         ђ
p 
ф "5б2
+і(
tensor_0         ђ
џ ╗
B__inference_dropout_layer_call_and_return_conditional_losses_24340u<б9
2б/
)і&
inputs         ђ
p
ф "5б2
+і(
tensor_0         ђ
џ Ћ
'__inference_dropout_layer_call_fn_24318j<б9
2б/
)і&
inputs         ђ
p 
ф "*і'
unknown         ђЋ
'__inference_dropout_layer_call_fn_24323j<б9
2б/
)і&
inputs         ђ
p
ф "*і'
unknown         ђд
=__inference_fc_layer_call_and_return_conditional_losses_24371eij1б.
'б$
"і
inputs         ђ─
ф ",б)
"і
tensor_0         
џ ђ
"__inference_fc_layer_call_fn_24360Zij1б.
'б$
"і
inputs         ђ─
ф "!і
unknown         ░
B__inference_flatten_layer_call_and_return_conditional_losses_24351j8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
tensor_0         ђ─
џ і
'__inference_flatten_layer_call_fn_24345_8б5
.б+
)і&
inputs         ђ
ф "#і 
unknown         ђ─Ь
D__inference_max_pool0_layer_call_and_return_conditional_losses_24212ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_max_pool0_layer_call_fn_24207џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    Ь
D__inference_max_pool1_layer_call_and_return_conditional_losses_24313ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_max_pool1_layer_call_fn_24308џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    е
#__inference_signature_wrapper_23922ђ&'()<=FGHIijEбB
б 
;ф8
6
input_1+і(
input_1         ­­"'ф$
"
fcі
fc         