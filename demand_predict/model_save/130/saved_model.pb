â
Ě77
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

ControlTrigger
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z

!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
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
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
A

StackPopV2

handle
elem"	elem_type"
	elem_typetype
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( 
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring 
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
Ţ
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5
Z
self_variable/PlaceholderPlaceholder*
dtype0
*
_output_shapes
: *
shape: 

self_variable/Placeholder_1Placeholder*
dtype0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙[* 
shape:˙˙˙˙˙˙˙˙˙[
~
self_variable/Placeholder_2Placeholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
Š
3self_variable/in/Initializer/truncated_normal/shapeConst*
valueB"[      *#
_class
loc:@self_variable/in*
dtype0*
_output_shapes
:

2self_variable/in/Initializer/truncated_normal/meanConst*
valueB
 *    *#
_class
loc:@self_variable/in*
dtype0*
_output_shapes
: 

4self_variable/in/Initializer/truncated_normal/stddevConst*
valueB
 *l->*#
_class
loc:@self_variable/in*
dtype0*
_output_shapes
: 
ů
=self_variable/in/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3self_variable/in/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:[*

seed *
T0*#
_class
loc:@self_variable/in*
seed2 
ű
1self_variable/in/Initializer/truncated_normal/mulMul=self_variable/in/Initializer/truncated_normal/TruncatedNormal4self_variable/in/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
é
-self_variable/in/Initializer/truncated_normalAdd1self_variable/in/Initializer/truncated_normal/mul2self_variable/in/Initializer/truncated_normal/mean*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
Š
self_variable/in
VariableV2*
shared_name *#
_class
loc:@self_variable/in*
	container *
shape
:[*
dtype0*
_output_shapes

:[
Ů
self_variable/in/AssignAssignself_variable/in-self_variable/in/Initializer/truncated_normal*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(

self_variable/in/readIdentityself_variable/in*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
Ť
4self_variable/out/Initializer/truncated_normal/shapeConst*
valueB"      *$
_class
loc:@self_variable/out*
dtype0*
_output_shapes
:

3self_variable/out/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *$
_class
loc:@self_variable/out
 
5self_variable/out/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ĐdÎ?*$
_class
loc:@self_variable/out
ü
>self_variable/out/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4self_variable/out/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:*

seed *
T0*$
_class
loc:@self_variable/out*
seed2 
˙
2self_variable/out/Initializer/truncated_normal/mulMul>self_variable/out/Initializer/truncated_normal/TruncatedNormal5self_variable/out/Initializer/truncated_normal/stddev*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
í
.self_variable/out/Initializer/truncated_normalAdd2self_variable/out/Initializer/truncated_normal/mul3self_variable/out/Initializer/truncated_normal/mean*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
Ť
self_variable/out
VariableV2*
shared_name *$
_class
loc:@self_variable/out*
	container *
shape
:*
dtype0*
_output_shapes

:
Ý
self_variable/out/AssignAssignself_variable/out.self_variable/out/Initializer/truncated_normal*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(

self_variable/out/readIdentityself_variable/out*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
`
self_variable/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

self_variable/Variable
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Í
self_variable/Variable/AssignAssignself_variable/Variableself_variable/Const*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:

self_variable/Variable/readIdentityself_variable/Variable*
T0*)
_class
loc:@self_variable/Variable*
_output_shapes
:
b
self_variable/Const_1Const*
dtype0*
_output_shapes
:*
valueB*    

self_variable/Variable_1
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ő
self_variable/Variable_1/AssignAssignself_variable/Variable_1self_variable/Const_1*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(

self_variable/Variable_1/readIdentityself_variable/Variable_1*
T0*+
_class!
loc:@self_variable/Variable_1*
_output_shapes
:
`
self_variable/Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
`
self_variable/Placeholder_4Placeholder*
dtype0*
_output_shapes
:*
shape:
g
sec_lstm/Reshape/shapeConst*
valueB"˙˙˙˙[   *
dtype0*
_output_shapes
:

sec_lstm/ReshapeReshapeself_variable/Placeholder_1sec_lstm/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[

sec_lstm/MatMulMatMulsec_lstm/Reshapeself_variable/in/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
s
sec_lstm/addAddsec_lstm/MatMulself_variable/Variable/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
sec_lstm/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*!
valueB"˙˙˙˙      

sec_lstm/Reshape_1Reshapesec_lstm/addsec_lstm/Reshape_1/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
S
sec_lstm/rnn/RankConst*
dtype0*
_output_shapes
: *
value	B :
Z
sec_lstm/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
Z
sec_lstm/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

sec_lstm/rnn/rangeRangesec_lstm/rnn/range/startsec_lstm/rnn/Ranksec_lstm/rnn/range/delta*

Tidx0*
_output_shapes
:
m
sec_lstm/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
Z
sec_lstm/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ľ
sec_lstm/rnn/concatConcatV2sec_lstm/rnn/concat/values_0sec_lstm/rnn/rangesec_lstm/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0

sec_lstm/rnn/transpose	Transposesec_lstm/Reshape_1sec_lstm/rnn/concat*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
h
sec_lstm/rnn/ShapeShapesec_lstm/rnn/transpose*
T0*
out_type0*
_output_shapes
:
j
 sec_lstm/rnn/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
l
"sec_lstm/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"sec_lstm/rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ş
sec_lstm/rnn/strided_sliceStridedSlicesec_lstm/rnn/Shape sec_lstm/rnn/strided_slice/stack"sec_lstm/rnn/strided_slice/stack_1"sec_lstm/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
ű
Msec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims
ExpandDimssec_lstm/rnn/strided_sliceQsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0

Hsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:

Nsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ř
Isec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concatConcatV2Msec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDimsHsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ConstNsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

Nsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ż
Hsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zerosFillIsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concatNsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
˙
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:

Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_1Const*
dtype0*
_output_shapes
:*
valueB:

Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
˙
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:

Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 

Ksec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1ConcatV2Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_2Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_2Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0

Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
ľ
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1FillKsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/concat_1Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
˙
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes
:

Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/Const_3Const*
dtype0*
_output_shapes
:*
valueB:

Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
˙
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:

Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ConstConst*
valueB:*
dtype0*
_output_shapes
:

Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ksec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concatConcatV2Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDimsJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ConstPsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0

Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ľ
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zerosFillKsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concatPsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0

Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_1
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:

Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/Const_1Const*
valueB:*
dtype0*
_output_shapes
:

Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
value	B : 

Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_2
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:

Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Msec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat_1ConcatV2Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_2Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/Const_2Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:

Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ť
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros_1FillMsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/concat_1Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros_1/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0

Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_3
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes
:

Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/Const_3Const*
valueB:*
dtype0*
_output_shapes
:

Ssec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
˙
Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims
ExpandDimssec_lstm/rnn/strided_sliceSsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:

Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ConstConst*
valueB:*
dtype0*
_output_shapes
:

Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ksec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concatConcatV2Osec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDimsJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ConstPsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0

Psec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
ľ
Jsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zerosFillKsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concatPsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_1
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0

Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/Const_1Const*
valueB:*
dtype0*
_output_shapes
:

Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_2
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:

Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Msec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat_1ConcatV2Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_2Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/Const_2Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0

Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ť
Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros_1FillMsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/concat_1Rsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Usec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Qsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_3
ExpandDimssec_lstm/rnn/strided_sliceUsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/ExpandDims_3/dim*
T0*
_output_shapes
:*

Tdim0

Lsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/Const_3Const*
valueB:*
dtype0*
_output_shapes
:
j
sec_lstm/rnn/Shape_1Shapesec_lstm/rnn/transpose*
_output_shapes
:*
T0*
out_type0
l
"sec_lstm/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
n
$sec_lstm/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$sec_lstm/rnn/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ä
sec_lstm/rnn/strided_slice_1StridedSlicesec_lstm/rnn/Shape_1"sec_lstm/rnn/strided_slice_1/stack$sec_lstm/rnn/strided_slice_1/stack_1$sec_lstm/rnn/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
j
sec_lstm/rnn/Shape_2Shapesec_lstm/rnn/transpose*
T0*
out_type0*
_output_shapes
:
l
"sec_lstm/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
n
$sec_lstm/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
n
$sec_lstm/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ä
sec_lstm/rnn/strided_slice_2StridedSlicesec_lstm/rnn/Shape_2"sec_lstm/rnn/strided_slice_2/stack$sec_lstm/rnn/strided_slice_2/stack_1$sec_lstm/rnn/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
]
sec_lstm/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

sec_lstm/rnn/ExpandDims
ExpandDimssec_lstm/rnn/strided_slice_2sec_lstm/rnn/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
\
sec_lstm/rnn/ConstConst*
dtype0*
_output_shapes
:*
valueB:
\
sec_lstm/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¤
sec_lstm/rnn/concat_1ConcatV2sec_lstm/rnn/ExpandDimssec_lstm/rnn/Constsec_lstm/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
]
sec_lstm/rnn/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

sec_lstm/rnn/zerosFillsec_lstm/rnn/concat_1sec_lstm/rnn/zeros/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
S
sec_lstm/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 

sec_lstm/rnn/TensorArrayTensorArrayV3sec_lstm/rnn/strided_slice_1*8
tensor_array_name#!sec_lstm/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:˙˙˙˙˙˙˙˙˙*
clear_after_read(*
dynamic_size( *
identical_element_shapes(

sec_lstm/rnn/TensorArray_1TensorArrayV3sec_lstm/rnn/strided_slice_1*
dtype0*
_output_shapes

:: *$
element_shape:˙˙˙˙˙˙˙˙˙*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*7
tensor_array_name" sec_lstm/rnn/dynamic_rnn/input_0
{
%sec_lstm/rnn/TensorArrayUnstack/ShapeShapesec_lstm/rnn/transpose*
_output_shapes
:*
T0*
out_type0
}
3sec_lstm/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-sec_lstm/rnn/TensorArrayUnstack/strided_sliceStridedSlice%sec_lstm/rnn/TensorArrayUnstack/Shape3sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack5sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack_15sec_lstm/rnn/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
m
+sec_lstm/rnn/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
m
+sec_lstm/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
č
%sec_lstm/rnn/TensorArrayUnstack/rangeRange+sec_lstm/rnn/TensorArrayUnstack/range/start-sec_lstm/rnn/TensorArrayUnstack/strided_slice+sec_lstm/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
¤
Gsec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3sec_lstm/rnn/TensorArray_1%sec_lstm/rnn/TensorArrayUnstack/rangesec_lstm/rnn/transposesec_lstm/rnn/TensorArray_1:1*
T0*)
_class
loc:@sec_lstm/rnn/transpose*
_output_shapes
: 
X
sec_lstm/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
v
sec_lstm/rnn/MaximumMaximumsec_lstm/rnn/Maximum/xsec_lstm/rnn/strided_slice_1*
T0*
_output_shapes
: 
t
sec_lstm/rnn/MinimumMinimumsec_lstm/rnn/strided_slice_1sec_lstm/rnn/Maximum*
_output_shapes
: *
T0
f
$sec_lstm/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
Č
sec_lstm/rnn/while/EnterEnter$sec_lstm/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
ˇ
sec_lstm/rnn/while/Enter_1Entersec_lstm/rnn/time*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant( 
Ŕ
sec_lstm/rnn/while/Enter_2Entersec_lstm/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
˙
sec_lstm/rnn/while/Enter_3EnterHsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0

frame_name" sec_lstm/rnn/while/while_context

sec_lstm/rnn/while/Enter_4EnterJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0

frame_name" sec_lstm/rnn/while/while_context

sec_lstm/rnn/while/Enter_5EnterJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros*
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant( 

sec_lstm/rnn/while/Enter_6EnterLsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_1/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0

frame_name" sec_lstm/rnn/while/while_context

sec_lstm/rnn/while/Enter_7EnterJsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0

frame_name" sec_lstm/rnn/while/while_context

sec_lstm/rnn/while/Enter_8EnterLsec_lstm/rnn/MultiRNNCellZeroState/LayerNormBasicLSTMCellZeroState_2/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0

frame_name" sec_lstm/rnn/while/while_context

sec_lstm/rnn/while/MergeMergesec_lstm/rnn/while/Enter sec_lstm/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 

sec_lstm/rnn/while/Merge_1Mergesec_lstm/rnn/while/Enter_1"sec_lstm/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 

sec_lstm/rnn/while/Merge_2Mergesec_lstm/rnn/while/Enter_2"sec_lstm/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
 
sec_lstm/rnn/while/Merge_3Mergesec_lstm/rnn/while/Enter_3"sec_lstm/rnn/while/NextIteration_3*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: 
 
sec_lstm/rnn/while/Merge_4Mergesec_lstm/rnn/while/Enter_4"sec_lstm/rnn/while/NextIteration_4*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: 
 
sec_lstm/rnn/while/Merge_5Mergesec_lstm/rnn/while/Enter_5"sec_lstm/rnn/while/NextIteration_5*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: 
 
sec_lstm/rnn/while/Merge_6Mergesec_lstm/rnn/while/Enter_6"sec_lstm/rnn/while/NextIteration_6*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0
 
sec_lstm/rnn/while/Merge_7Mergesec_lstm/rnn/while/Enter_7"sec_lstm/rnn/while/NextIteration_7*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: 
 
sec_lstm/rnn/while/Merge_8Mergesec_lstm/rnn/while/Enter_8"sec_lstm/rnn/while/NextIteration_8*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0
y
sec_lstm/rnn/while/LessLesssec_lstm/rnn/while/Mergesec_lstm/rnn/while/Less/Enter*
T0*
_output_shapes
: 
Ĺ
sec_lstm/rnn/while/Less/EnterEntersec_lstm/rnn/strided_slice_1*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(

sec_lstm/rnn/while/Less_1Lesssec_lstm/rnn/while/Merge_1sec_lstm/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
ż
sec_lstm/rnn/while/Less_1/EnterEntersec_lstm/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
w
sec_lstm/rnn/while/LogicalAnd
LogicalAndsec_lstm/rnn/while/Lesssec_lstm/rnn/while/Less_1*
_output_shapes
: 
^
sec_lstm/rnn/while/LoopCondLoopCondsec_lstm/rnn/while/LogicalAnd*
_output_shapes
: 
Ş
sec_lstm/rnn/while/SwitchSwitchsec_lstm/rnn/while/Mergesec_lstm/rnn/while/LoopCond*
T0*+
_class!
loc:@sec_lstm/rnn/while/Merge*
_output_shapes
: : 
°
sec_lstm/rnn/while/Switch_1Switchsec_lstm/rnn/while/Merge_1sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_1*
_output_shapes
: : 
°
sec_lstm/rnn/while/Switch_2Switchsec_lstm/rnn/while/Merge_2sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_2*
_output_shapes
: : 
Ň
sec_lstm/rnn/while/Switch_3Switchsec_lstm/rnn/while/Merge_3sec_lstm/rnn/while/LoopCond*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_3
Ň
sec_lstm/rnn/while/Switch_4Switchsec_lstm/rnn/while/Merge_4sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_4*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ň
sec_lstm/rnn/while/Switch_5Switchsec_lstm/rnn/while/Merge_5sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_5*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ň
sec_lstm/rnn/while/Switch_6Switchsec_lstm/rnn/while/Merge_6sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_6*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ň
sec_lstm/rnn/while/Switch_7Switchsec_lstm/rnn/while/Merge_7sec_lstm/rnn/while/LoopCond*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_7*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ň
sec_lstm/rnn/while/Switch_8Switchsec_lstm/rnn/while/Merge_8sec_lstm/rnn/while/LoopCond*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*-
_class#
!loc:@sec_lstm/rnn/while/Merge_8
e
sec_lstm/rnn/while/IdentityIdentitysec_lstm/rnn/while/Switch:1*
_output_shapes
: *
T0
i
sec_lstm/rnn/while/Identity_1Identitysec_lstm/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
i
sec_lstm/rnn/while/Identity_2Identitysec_lstm/rnn/while/Switch_2:1*
_output_shapes
: *
T0
z
sec_lstm/rnn/while/Identity_3Identitysec_lstm/rnn/while/Switch_3:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
sec_lstm/rnn/while/Identity_4Identitysec_lstm/rnn/while/Switch_4:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
sec_lstm/rnn/while/Identity_5Identitysec_lstm/rnn/while/Switch_5:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
sec_lstm/rnn/while/Identity_6Identitysec_lstm/rnn/while/Switch_6:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
sec_lstm/rnn/while/Identity_7Identitysec_lstm/rnn/while/Switch_7:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
z
sec_lstm/rnn/while/Identity_8Identitysec_lstm/rnn/while/Switch_8:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
sec_lstm/rnn/while/add/yConst^sec_lstm/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
u
sec_lstm/rnn/while/addAddsec_lstm/rnn/while/Identitysec_lstm/rnn/while/add/y*
_output_shapes
: *
T0
č
$sec_lstm/rnn/while/TensorArrayReadV3TensorArrayReadV3*sec_lstm/rnn/while/TensorArrayReadV3/Entersec_lstm/rnn/while/Identity_1,sec_lstm/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
*sec_lstm/rnn/while/TensorArrayReadV3/EnterEntersec_lstm/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
˙
,sec_lstm/rnn/while/TensorArrayReadV3/Enter_1EnterGsec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
ş
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axisConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
É
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concatConcatV2$sec_lstm/rnn/while/TensorArrayReadV3sec_lstm/rnn/while/Identity_4Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

esec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"       *W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
:

csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *óľž*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 

csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *óľ>*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 

msec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformesec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
seed2 *
dtype0*
_output_shapes

: 
Ž
csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/subSubcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/maxcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes
: 
Ŕ
csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulMulmsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes

: 
˛
_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniformAddcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/mulcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes

: 

Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape
: 
§
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignAssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ä
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/readIdentityDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
T0*
_output_shapes

: 
ë
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMulMatMulUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat[sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 
¸
[sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/EnterEnterIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

: *0

frame_name" sec_lstm/rnn/while/while_context

csec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB: *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
ý
asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/minConst*
valueB
 *qÄž*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
ý
asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxConst*
valueB
 *qÄ>*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
: 

ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformRandomUniformcsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
: *

seed *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ś
asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/subSubasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/maxasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
´
asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulMulksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/RandomUniformasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/sub*
_output_shapes
: *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ś
]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniformAddasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/mulasec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform/min*
_output_shapes
: *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

Bsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
VariableV2*
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape: *
dtype0*
_output_shapes
: 

Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignAssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
ź
Gsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/readIdentityBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
T0*
_output_shapes
: 
ß
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAddBiasAddUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ł
\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/EnterEnterGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
´
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/ConstConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ž
^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/splitSplit^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dimVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
ĺ
Ssec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/ReluReluVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ˇ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/yConst^sec_lstm/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
š
Rsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/addAddVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/SigmoidSigmoidRsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulMulsec_lstm/rnn/while/Identity_3Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1SigmoidTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ź
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1MulXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1Ssec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1AddRsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mulTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ĺ
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1ReluTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2SigmoidVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2MulUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axisConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ý
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1ConcatV2Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2sec_lstm/rnn/while/Identity_6\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
ď
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1MatMulWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1[sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
ă
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1BiasAddWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
ś
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_1Const^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dimConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1Split`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dimXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
é
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2ReluXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/yConst^sec_lstm/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ż
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2AddXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3SigmoidTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3Mulsec_lstm/rnn/while/Identity_5Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4SigmoidVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4MulXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3AddTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3ReluTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5SigmoidXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5MulUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ź
\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2/axisConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ý
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2ConcatV2Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5sec_lstm/rnn/while/Identity_8\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2/axis*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
ď
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2MatMulWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2[sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( 
ă
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2BiasAddWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ś
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_2Const^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2/split_dimConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2Split`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2/split_dimXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2*
T0*`
_output_shapesN
L:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
é
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4ReluXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4/yConst^sec_lstm/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ż
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4AddXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:2Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4/y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6SigmoidTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6Mulsec_lstm/rnn/while/Identity_7Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
í
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7SigmoidVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7MulXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5AddTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5ReluTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8SigmoidXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8MulUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
6sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3<sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Entersec_lstm/rnn/while/Identity_1Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8sec_lstm/rnn/while/Identity_2*
T0*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8*
_output_shapes
: 
Í
<sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntersec_lstm/rnn/TensorArray*0

frame_name" sec_lstm/rnn/while/while_context*
_output_shapes
:*
T0*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8*
parallel_iterations *
is_constant(
z
sec_lstm/rnn/while/add_1/yConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
{
sec_lstm/rnn/while/add_1Addsec_lstm/rnn/while/Identity_1sec_lstm/rnn/while/add_1/y*
_output_shapes
: *
T0
j
 sec_lstm/rnn/while/NextIterationNextIterationsec_lstm/rnn/while/add*
T0*
_output_shapes
: 
n
"sec_lstm/rnn/while/NextIteration_1NextIterationsec_lstm/rnn/while/add_1*
T0*
_output_shapes
: 

"sec_lstm/rnn/while/NextIteration_2NextIteration6sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ť
"sec_lstm/rnn/while/NextIteration_3NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ť
"sec_lstm/rnn/while/NextIteration_4NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
"sec_lstm/rnn/while/NextIteration_5NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
"sec_lstm/rnn/while/NextIteration_6NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
"sec_lstm/rnn/while/NextIteration_7NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ť
"sec_lstm/rnn/while/NextIteration_8NextIterationTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
[
sec_lstm/rnn/while/ExitExitsec_lstm/rnn/while/Switch*
_output_shapes
: *
T0
_
sec_lstm/rnn/while/Exit_1Exitsec_lstm/rnn/while/Switch_1*
T0*
_output_shapes
: 
_
sec_lstm/rnn/while/Exit_2Exitsec_lstm/rnn/while/Switch_2*
_output_shapes
: *
T0
p
sec_lstm/rnn/while/Exit_3Exitsec_lstm/rnn/while/Switch_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
sec_lstm/rnn/while/Exit_4Exitsec_lstm/rnn/while/Switch_4*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
p
sec_lstm/rnn/while/Exit_5Exitsec_lstm/rnn/while/Switch_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
sec_lstm/rnn/while/Exit_6Exitsec_lstm/rnn/while/Switch_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
sec_lstm/rnn/while/Exit_7Exitsec_lstm/rnn/while/Switch_7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
sec_lstm/rnn/while/Exit_8Exitsec_lstm/rnn/while/Switch_8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
/sec_lstm/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3sec_lstm/rnn/TensorArraysec_lstm/rnn/while/Exit_2*+
_class!
loc:@sec_lstm/rnn/TensorArray*
_output_shapes
: 

)sec_lstm/rnn/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *+
_class!
loc:@sec_lstm/rnn/TensorArray

)sec_lstm/rnn/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@sec_lstm/rnn/TensorArray

#sec_lstm/rnn/TensorArrayStack/rangeRange)sec_lstm/rnn/TensorArrayStack/range/start/sec_lstm/rnn/TensorArrayStack/TensorArraySizeV3)sec_lstm/rnn/TensorArrayStack/range/delta*+
_class!
loc:@sec_lstm/rnn/TensorArray*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
Ż
1sec_lstm/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3sec_lstm/rnn/TensorArray#sec_lstm/rnn/TensorArrayStack/rangesec_lstm/rnn/while/Exit_2*$
element_shape:˙˙˙˙˙˙˙˙˙*+
_class!
loc:@sec_lstm/rnn/TensorArray*
dtype0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
sec_lstm/rnn/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
U
sec_lstm/rnn/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
\
sec_lstm/rnn/range_1/startConst*
dtype0*
_output_shapes
: *
value	B :
\
sec_lstm/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

sec_lstm/rnn/range_1Rangesec_lstm/rnn/range_1/startsec_lstm/rnn/Rank_1sec_lstm/rnn/range_1/delta*
_output_shapes
:*

Tidx0
o
sec_lstm/rnn/concat_2/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
\
sec_lstm/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
­
sec_lstm/rnn/concat_2ConcatV2sec_lstm/rnn/concat_2/values_0sec_lstm/rnn/range_1sec_lstm/rnn/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0
˛
sec_lstm/rnn/transpose_1	Transpose1sec_lstm/rnn/TensorArrayStack/TensorArrayGatherV3sec_lstm/rnn/concat_2*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
i
sec_lstm/Reshape_2/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:

sec_lstm/Reshape_2Reshapesec_lstm/rnn/while/Exit_8sec_lstm/Reshape_2/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

sec_lstm/MatMul_1MatMulsec_lstm/Reshape_2self_variable/out/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
y
sec_lstm/add_1Addsec_lstm/MatMul_1self_variable/Variable_1/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
Variable/initial_valueConst*
dtype0*
_output_shapes
: *
value	B : 
l
Variable
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
˘
Variable/AssignAssignVariableVariable/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
a
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes
: 
k
&ExponentialDecay/initial_learning_rateConst*
valueB
 *o<*
dtype0*
_output_shapes
: 
Z
ExponentialDecay/Cast/xConst*
value
B :ú=*
dtype0*
_output_shapes
: 
v
ExponentialDecay/CastCastExponentialDecay/Cast/x*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
^
ExponentialDecay/Cast_1/xConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
n
ExponentialDecay/Cast_2CastVariable/read*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
t
ExponentialDecay/truedivRealDivExponentialDecay/Cast_2ExponentialDecay/Cast*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_1/xExponentialDecay/Floor*
T0*
_output_shapes
: 
v
ExponentialDecayMul&ExponentialDecay/initial_learning_rateExponentialDecay/Pow*
T0*
_output_shapes
: 
`
Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
m
ReshapeReshapesec_lstm/add_1Reshape/shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
~
	Reshape_1Reshapeself_variable/Placeholder_2Reshape_1/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
L
subSubReshape	Reshape_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
C
SquareSquaresub*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
Y
MeanMeanSquareConst*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
S
gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
°
gradients/f_count_1Entergradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *0

frame_name" sec_lstm/rnn/while/while_context
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N*
_output_shapes
: : 
k
gradients/SwitchSwitchgradients/Mergesec_lstm/rnn/while/LoopCond*
T0*
_output_shapes
: : 
o
gradients/Add/yConst^sec_lstm/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*
_output_shapes
: 
˙7
gradients/NextIterationNextIterationgradients/Addd^gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2|^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2|^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPushV2z^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2_1^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2z^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2|^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2_1z^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2|^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2z^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2_1t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPushV2v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1r^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPushV2t^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPushV2*
T0*
_output_shapes
: 
N
gradients/f_count_2Exitgradients/Switch*
T0*
_output_shapes
: 
S
gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
ź
gradients/b_count_1Entergradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
Ă
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0*
_output_shapes
: : 
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
_output_shapes
: *
T0
Ţ
gradients/NextIteration_1NextIterationgradients/Sub^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/b_sync*
T0*
_output_shapes
: 
P
gradients/b_count_3Exitgradients/Switch_1*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
_
gradients/Mean_grad/ShapeShapeSquare*
_output_shapes
:*
T0*
out_type0

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
a
gradients/Mean_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
p
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
gradients/sub_grad/ShapeShapeReshape*
_output_shapes
:*
T0*
out_type0
c
gradients/sub_grad/Shape_1Shape	Reshape_1*
_output_shapes
:*
T0*
out_type0
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¤
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
¨
gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ö
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
gradients/Reshape_grad/ShapeShapesec_lstm/add_1*
_output_shapes
:*
T0*
out_type0
´
gradients/Reshape_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
#gradients/sec_lstm/add_1_grad/ShapeShapesec_lstm/MatMul_1*
T0*
out_type0*
_output_shapes
:
o
%gradients/sec_lstm/add_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ő
3gradients/sec_lstm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/sec_lstm/add_1_grad/Shape%gradients/sec_lstm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˝
!gradients/sec_lstm/add_1_grad/SumSumgradients/Reshape_grad/Reshape3gradients/sec_lstm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
¸
%gradients/sec_lstm/add_1_grad/ReshapeReshape!gradients/sec_lstm/add_1_grad/Sum#gradients/sec_lstm/add_1_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Á
#gradients/sec_lstm/add_1_grad/Sum_1Sumgradients/Reshape_grad/Reshape5gradients/sec_lstm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ą
'gradients/sec_lstm/add_1_grad/Reshape_1Reshape#gradients/sec_lstm/add_1_grad/Sum_1%gradients/sec_lstm/add_1_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0

.gradients/sec_lstm/add_1_grad/tuple/group_depsNoOp&^gradients/sec_lstm/add_1_grad/Reshape(^gradients/sec_lstm/add_1_grad/Reshape_1

6gradients/sec_lstm/add_1_grad/tuple/control_dependencyIdentity%gradients/sec_lstm/add_1_grad/Reshape/^gradients/sec_lstm/add_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/sec_lstm/add_1_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˙
8gradients/sec_lstm/add_1_grad/tuple/control_dependency_1Identity'gradients/sec_lstm/add_1_grad/Reshape_1/^gradients/sec_lstm/add_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/sec_lstm/add_1_grad/Reshape_1*
_output_shapes
:
Ů
'gradients/sec_lstm/MatMul_1_grad/MatMulMatMul6gradients/sec_lstm/add_1_grad/tuple/control_dependencyself_variable/out/read*
transpose_b(*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
Î
)gradients/sec_lstm/MatMul_1_grad/MatMul_1MatMulsec_lstm/Reshape_26gradients/sec_lstm/add_1_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(

1gradients/sec_lstm/MatMul_1_grad/tuple/group_depsNoOp(^gradients/sec_lstm/MatMul_1_grad/MatMul*^gradients/sec_lstm/MatMul_1_grad/MatMul_1

9gradients/sec_lstm/MatMul_1_grad/tuple/control_dependencyIdentity'gradients/sec_lstm/MatMul_1_grad/MatMul2^gradients/sec_lstm/MatMul_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/sec_lstm/MatMul_1_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;gradients/sec_lstm/MatMul_1_grad/tuple/control_dependency_1Identity)gradients/sec_lstm/MatMul_1_grad/MatMul_12^gradients/sec_lstm/MatMul_1_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/sec_lstm/MatMul_1_grad/MatMul_1*
_output_shapes

:

'gradients/sec_lstm/Reshape_2_grad/ShapeShapesec_lstm/rnn/while/Exit_8*
T0*
out_type0*
_output_shapes
:
Ř
)gradients/sec_lstm/Reshape_2_grad/ReshapeReshape9gradients/sec_lstm/MatMul_1_grad/tuple/control_dependency'gradients/sec_lstm/Reshape_2_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
T
gradients/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
gradients/zeros_like	ZerosLikesec_lstm/rnn/while/Exit_3*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
p
gradients/zeros_like_1	ZerosLikesec_lstm/rnn/while/Exit_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/zeros_like_2	ZerosLikesec_lstm/rnn/while/Exit_5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
gradients/zeros_like_3	ZerosLikesec_lstm/rnn/while/Exit_6*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
p
gradients/zeros_like_4	ZerosLikesec_lstm/rnn/while/Exit_7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˙
/gradients/sec_lstm/rnn/while/Exit_8_grad/b_exitEnter)gradients/sec_lstm/Reshape_2_grad/Reshape*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ô
/gradients/sec_lstm/rnn/while/Exit_2_grad/b_exitEntergradients/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ę
/gradients/sec_lstm/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ě
/gradients/sec_lstm/rnn/while/Exit_4_grad/b_exitEntergradients/zeros_like_1*
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant( 
ě
/gradients/sec_lstm/rnn/while/Exit_5_grad/b_exitEntergradients/zeros_like_2*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ě
/gradients/sec_lstm/rnn/while/Exit_6_grad/b_exitEntergradients/zeros_like_3*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ě
/gradients/sec_lstm/rnn/while/Exit_7_grad/b_exitEntergradients/zeros_like_4*
parallel_iterations *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant( 
ć
3gradients/sec_lstm/rnn/while/Switch_8_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_8_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_8_grad_1/NextIteration*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0
ć
3gradients/sec_lstm/rnn/while/Switch_3_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_3_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: 
ć
3gradients/sec_lstm/rnn/while/Switch_4_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_4_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: 
ć
3gradients/sec_lstm/rnn/while/Switch_5_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_5_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_5_grad_1/NextIteration*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0
ć
3gradients/sec_lstm/rnn/while/Switch_6_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_6_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_6_grad_1/NextIteration*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: 
ć
3gradients/sec_lstm/rnn/while/Switch_7_grad/b_switchMerge/gradients/sec_lstm/rnn/while/Exit_7_grad/b_exit:gradients/sec_lstm/rnn/while/Switch_7_grad_1/NextIteration*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0

0gradients/sec_lstm/rnn/while/Merge_8_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_8_grad/b_switchgradients/b_count_2*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_8_grad/b_switch
u
:gradients/sec_lstm/rnn/while/Merge_8_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_8_grad/Switch
ˇ
Bgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_8_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_8_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_8_grad/b_switch
ť
Dgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_8_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_8_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_8_grad/b_switch*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0gradients/sec_lstm/rnn/while/Merge_3_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_3_grad/b_switch*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
u
:gradients/sec_lstm/rnn/while/Merge_3_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_3_grad/Switch
ˇ
Bgradients/sec_lstm/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_3_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_3_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_3_grad/b_switch*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
Dgradients/sec_lstm/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_3_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_3_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_3_grad/b_switch*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0gradients/sec_lstm/rnn/while/Merge_4_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_4_grad/b_switchgradients/b_count_2*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_4_grad/b_switch
u
:gradients/sec_lstm/rnn/while/Merge_4_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_4_grad/Switch
ˇ
Bgradients/sec_lstm/rnn/while/Merge_4_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_4_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_4_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_4_grad/b_switch*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
Dgradients/sec_lstm/rnn/while/Merge_4_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_4_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_4_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_4_grad/b_switch

0gradients/sec_lstm/rnn/while/Merge_5_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_5_grad/b_switchgradients/b_count_2*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_5_grad/b_switch*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
u
:gradients/sec_lstm/rnn/while/Merge_5_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_5_grad/Switch
ˇ
Bgradients/sec_lstm/rnn/while/Merge_5_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_5_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_5_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_5_grad/b_switch*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
Dgradients/sec_lstm/rnn/while/Merge_5_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_5_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_5_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_5_grad/b_switch

0gradients/sec_lstm/rnn/while/Merge_6_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_6_grad/b_switchgradients/b_count_2*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_6_grad/b_switch*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
u
:gradients/sec_lstm/rnn/while/Merge_6_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_6_grad/Switch
ˇ
Bgradients/sec_lstm/rnn/while/Merge_6_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_6_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_6_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_6_grad/b_switch
ť
Dgradients/sec_lstm/rnn/while/Merge_6_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_6_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_6_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_6_grad/b_switch*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

0gradients/sec_lstm/rnn/while/Merge_7_grad/SwitchSwitch3gradients/sec_lstm/rnn/while/Switch_7_grad/b_switchgradients/b_count_2*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_7_grad/b_switch
u
:gradients/sec_lstm/rnn/while/Merge_7_grad/tuple/group_depsNoOp1^gradients/sec_lstm/rnn/while/Merge_7_grad/Switch
ˇ
Bgradients/sec_lstm/rnn/while/Merge_7_grad/tuple/control_dependencyIdentity0gradients/sec_lstm/rnn/while/Merge_7_grad/Switch;^gradients/sec_lstm/rnn/while/Merge_7_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_7_grad/b_switch*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
Dgradients/sec_lstm/rnn/while/Merge_7_grad/tuple/control_dependency_1Identity2gradients/sec_lstm/rnn/while/Merge_7_grad/Switch:1;^gradients/sec_lstm/rnn/while/Merge_7_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_7_grad/b_switch
Ź
.gradients/sec_lstm/rnn/while/Enter_8_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
.gradients/sec_lstm/rnn/while/Enter_3_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
.gradients/sec_lstm/rnn/while/Enter_4_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_4_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
.gradients/sec_lstm/rnn/while/Enter_5_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_5_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
.gradients/sec_lstm/rnn/while/Enter_6_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_6_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
.gradients/sec_lstm/rnn/while/Enter_7_grad/ExitExitBgradients/sec_lstm/rnn/while/Merge_7_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/ShapeShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5*
T0*
out_type0*
_output_shapes
:

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8*
T0*
out_type0*
_output_shapes
:
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
8
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/b_syncControlTriggerc^gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2{^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2{^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2y^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2y^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2{^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1y^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2{^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1w^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2y^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1q^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1*
dtype0*
_output_shapes
: 
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Const_1*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ú
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/MulMulDgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/Const*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8*

stack_name *
_output_shapes
:*
	elem_type0
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
 
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2Dgradients/sec_lstm/rnn/while/Merge_8_grad/tuple/control_dependency_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¤
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5*
dtype0*
_output_shapes
: 

ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/Const*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5*

stack_name *
_output_shapes
:*
	elem_type0
î
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Ą
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Č
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5_grad/ReluGradReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/control_dependencytgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
gradients/AddNAddNDgradients/sec_lstm/rnn/while/Merge_7_grad/tuple/control_dependency_1mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5_grad/ReluGrad*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_7_grad/b_switch*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ý
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/ShapeShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6*
T0*
out_type0*
_output_shapes
:
˙
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1ShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7*
T0*
out_type0*
_output_shapes
:
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Const_1*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
š
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/SumSumgradients/AddNygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Sum_1Sumgradients/AddN{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/ShapeShapesec_lstm/rnn/while/Identity_7*
T0*
out_type0*
_output_shapes
:

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6*
T0*
out_type0*
_output_shapes
:
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Const*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1*
dtype0*
_output_shapes
: 
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/MulMul|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependencyrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6*
dtype0*
_output_shapes
: 

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/Const*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6*

stack_name *
_output_shapes
:
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
 
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependency*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ě
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_7
Ü
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/Const*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_7*

stack_name *
_output_shapes
:*
	elem_type0
î
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
é
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/Entersec_lstm/rnn/while/Identity_7^gradients/Add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( *
T0
Č
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7*
T0*
out_type0*
_output_shapes
:

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1ShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4*
_output_shapes
:*
T0*
out_type0
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Const*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Const_1*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/MulMul~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4*
dtype0*
_output_shapes
: 

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/Const*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4*

stack_name *
_output_shapes
:*
	elem_type0
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context

sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7*
dtype0*
_output_shapes
: 

ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/Const*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7*

stack_name *
_output_shapes
:*
	elem_type0
î
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
¤
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Č
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/control_dependency_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7_grad/SigmoidGradSigmoidGradtgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/control_dependency*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4_grad/ReluGradReluGrad~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPopV2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ű
:gradients/sec_lstm/rnn/while/Switch_7_grad_1/NextIterationNextIteration|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/tuple/control_dependency*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:2*
T0*
out_type0*
_output_shapes
:
ž
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
Ă
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/SumSumsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6_grad/SigmoidGradygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Sum_1Sumsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6_grad/SigmoidGrad{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
˙
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Sum_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Reshape_1*
_output_shapes
: 

lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concatConcatV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7_grad/SigmoidGradmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4_grad/ReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8_grad/SigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat/Const*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *

Tidx0*
T0
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Ź
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGradBiasAddGradlgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat*
T0*
data_formatNHWC*
_output_shapes
: 
ĺ
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/group_depsNoOpt^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGradm^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependencyIdentitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concaty^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2_grad/concat
­
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependency_1Identitysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGrady^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/group_deps*
T0*
_class|
zxloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGrad*
_output_shapes
: 
Ç
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMulMatMulgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul/Enter*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
Ú
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul/EnterEnterIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read*
parallel_iterations *
_output_shapes

: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Ç
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1MatMulzgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependency*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
Ź
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*j
_class`
^\loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2*
dtype0*
_output_shapes
: 
˘
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_accStackV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/Const*j
_class`
^\loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2*

stack_name *
_output_shapes
:*
	elem_type0
ú
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Ż
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPushV2StackPushV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/EnterWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ő
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPopV2/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
á
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/group_depsNoOpn^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMulp^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependencyIdentitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMulx^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependency_1Identityogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/group_deps*
T0*
_classx
vtloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1*
_output_shapes

: 
ž
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
˝
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
ň
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/modFloorModlgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Constkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Rank*
T0*
_output_shapes
: 

lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*
T0*
out_type0*
_output_shapes
:
ą
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeNShapeNxgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1*
N* 
_output_shapes
::*
T0*
out_type0
§
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/ConstConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5

sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_accStackV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Const*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5*

stack_name *
_output_shapes
:*
	elem_type0
ö
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
¨
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2StackPushV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/EnterTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Đ
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2
StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ň
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_8*
dtype0*
_output_shapes
: 
č
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1StackV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_8
ú
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter_1Enterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
ő
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2_1StackPushV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter_1sec_lstm/rnn/while/Identity_8^gradients/Add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( *
T0
Ő
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPopV2_1/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ú
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ConcatOffsetConcatOffsetjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/modmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeNogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN:1*
N* 
_output_shapes
::

lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/SliceSlicegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ConcatOffsetmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Index0*
T0

ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice_1Slicegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependencyugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ConcatOffset:1ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/group_depsNoOpm^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Sliceo^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice_1
Ś
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/control_dependencyIdentitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slicex^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/control_dependency_1Identityngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
_classw
usloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Slice_1
â
gradients/AddN_1AddNDgradients/sec_lstm/rnn/while/Merge_6_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/control_dependency*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_6_grad/b_switch*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/ShapeShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3*
T0*
out_type0*
_output_shapes
:

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5*
T0*
out_type0*
_output_shapes
:
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1*
dtype0*
_output_shapes
: 
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Const_1*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ś
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/MulMulgradients/AddN_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ľ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5*
dtype0*
_output_shapes
: 

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
 
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2gradients/AddN_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3*
dtype0*
_output_shapes
: 

ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/Const*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3*

stack_name *
_output_shapes
:*
	elem_type0
î
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Ą
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Č
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Reshape_1

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3_grad/ReluGradReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/control_dependencytgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:gradients/sec_lstm/rnn/while/Switch_8_grad_1/NextIterationNextIterationgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
gradients/AddN_2AddNDgradients/sec_lstm/rnn/while/Merge_5_grad/tuple/control_dependency_1mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3_grad/ReluGrad*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_5_grad/b_switch
ý
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/ShapeShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3*
T0*
out_type0*
_output_shapes
:
˙
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1ShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4*
_output_shapes
:*
T0*
out_type0
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Const*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1*
dtype0*
_output_shapes
: 
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Const_1*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
ť
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/SumSumgradients/AddN_2ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Sum_1Sumgradients/AddN_2{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/ShapeShapesec_lstm/rnn/while/Identity_5*
T0*
out_type0*
_output_shapes
:

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*
T0*
out_type0*
_output_shapes
:
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1*
dtype0*
_output_shapes
: 
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/MulMul|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependencyrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ľ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*
dtype0*
_output_shapes
: 

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/Const*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3*

stack_name *
_output_shapes
:
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
 
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3^gradients/Add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( *
T0
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependency*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ě
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_5*
dtype0*
_output_shapes
: 
Ü
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/Const*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_5*

stack_name *
_output_shapes
:*
	elem_type0
î
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
é
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/Entersec_lstm/rnn/while/Identity_5^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Č
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4*
T0*
out_type0*
_output_shapes
:

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1ShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2*
T0*
out_type0*
_output_shapes
:
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1*
dtype0*
_output_shapes
: 
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Const_1*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/MulMul~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˘
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2*
dtype0*
_output_shapes
: 

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context

sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/tuple/control_dependency_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
§
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4*
dtype0*
_output_shapes
: 

ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/Const*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4*

stack_name *
_output_shapes
:
î
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
¤
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4^gradients/Add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( *
T0
Č
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4_grad/SigmoidGradSigmoidGradtgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2_grad/ReluGradReluGrad~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
:gradients/sec_lstm/rnn/while/Switch_5_grad_1/NextIterationNextIteration|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2*
T0*
out_type0*
_output_shapes
:
ž
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape_1Const^gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
Ă
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/SumSumsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3_grad/SigmoidGradygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
˘
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Sum_1Sumsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3_grad/SigmoidGrad{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
˙
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Sum_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Reshape_1*
_output_shapes
: 

lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concatConcatV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4_grad/SigmoidGradmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2_grad/ReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5_grad/SigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat/Const*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *

Tidx0
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Ź
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradlgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat*
T0*
data_formatNHWC*
_output_shapes
: 
ĺ
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/group_depsNoOpt^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/BiasAddGradm^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependencyIdentitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concaty^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1_grad/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
­
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependency_1Identitysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/BiasAddGrady^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/group_deps*
T0*
_class|
zxloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/BiasAddGrad*
_output_shapes
: 
Ç
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMulMatMulgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul/Enter*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
Ç
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1MatMulzgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependency*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0
Ź
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*j
_class`
^\loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1*
dtype0*
_output_shapes
: 
˘
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_accStackV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/Const*j
_class`
^\loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1*

stack_name *
_output_shapes
:*
	elem_type0
ú
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
Ż
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/EnterWsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ő
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
á
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/group_depsNoOpn^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMulp^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependencyIdentitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMulx^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependency_1Identityogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/group_deps*
T0*
_classx
vtloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1*
_output_shapes

: 
ž
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
˝
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
ň
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/modFloorModlgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Constkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Rank*
_output_shapes
: *
T0

lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
T0*
out_type0*
_output_shapes
:
ą
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeNShapeNxgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N* 
_output_shapes
::
§
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*
dtype0*
_output_shapes
: 

sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_accStackV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Const*g
_class]
[Yloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2*

stack_name *
_output_shapes
:*
	elem_type0
ö
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
¨
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2StackPushV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/EnterTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Đ
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2
StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
ň
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_6*
dtype0*
_output_shapes
: 
č
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1StackV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Const_1*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_6*

stack_name *
_output_shapes
:*
	elem_type0
ú
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter_1Enterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
ő
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2_1StackPushV2ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter_1sec_lstm/rnn/while/Identity_6^gradients/Add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( *
T0
Ő
zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPopV2_1/EnterEnterugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
ú
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ConcatOffsetConcatOffsetjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/modmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeNogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN:1*
N* 
_output_shapes
::

lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/SliceSlicegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ConcatOffsetmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice_1Slicegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependencyugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ConcatOffset:1ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/group_depsNoOpm^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Sliceo^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice_1
Ś
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/control_dependencyIdentitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slicex^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/control_dependency_1Identityngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice_1x^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
_classw
usloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Slice_1
â
gradients/AddN_3AddNDgradients/sec_lstm/rnn/while/Merge_4_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/control_dependency*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_4_grad/b_switch*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/ShapeShapeUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1*
T0*
out_type0*
_output_shapes
:

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1ShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*
T0*
out_type0*
_output_shapes
:
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1*
dtype0*
_output_shapes
: 
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Ś
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/MulMulgradients/AddN_3rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2*
dtype0*
_output_shapes
: 

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
 
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2gradients/AddN_3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1*
dtype0*
_output_shapes
: 

ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/Const*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1*

stack_name *
_output_shapes
:*
	elem_type0
î
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Ą
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Č
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1_grad/ReluGradReluGrad|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/control_dependencytgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPopV2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:gradients/sec_lstm/rnn/while/Switch_6_grad_1/NextIterationNextIterationgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
gradients/AddN_4AddNDgradients/sec_lstm/rnn/while/Merge_3_grad/tuple/control_dependency_1mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1_grad/ReluGrad*
T0*F
_class<
:8loc:@gradients/sec_lstm/rnn/while/Switch_3_grad/b_switch*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/ShapeShapeRsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul*
T0*
out_type0*
_output_shapes
:
˙
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1ShapeTsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1*
_output_shapes
:*
T0*
out_type0
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Const*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
ť
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/SumSumgradients/AddN_4ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_4{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Reshape_1
Ä
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/ShapeShapesec_lstm/rnn/while/Identity_3*
T0*
out_type0*
_output_shapes
:
˙
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1ShapeVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*
_output_shapes
:*
T0*
out_type0
Ů
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ä
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*z
_classp
nlloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape*
dtype0*
_output_shapes
: 
Â
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Const*z
_classp
nlloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0

}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnter}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Ă
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enterggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ů
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
 
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(

egradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/MulMul|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependencypgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*i
_class_
][loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*
dtype0*
_output_shapes
: 

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_accStackV2kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/Const*i
_class_
][loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
ć
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/EnterEnterkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context

qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPushV2StackPushV2kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/EnterVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ŕ
pgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2
StackPopV2vgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0
ű
vgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2/EnterEnterkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

egradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/SumSumegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mulwgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
 
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/ReshapeReshapeegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1Mulrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_3*
dtype0*
_output_shapes
: 
Ř
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_3
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
ĺ
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/Entersec_lstm/rnn/while/Identity_3^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Sum_1Sumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape_1Reshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/group_depsNoOpj^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshapel^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape_1

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/control_dependencyIdentityigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshapes^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/control_dependency_1Identitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/ShapeShapeXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1*
_output_shapes
:*
T0*
out_type0
ţ
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1ShapeSsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu*
_output_shapes
:*
T0*
out_type0
ß
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape*
dtype0*
_output_shapes
: 
Č
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape*

stack_name *
_output_shapes
:

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
É
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enterigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ý
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
Í
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
˙˙˙˙˙˙˙˙˙*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Entergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Đ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
á
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
Š
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEntergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/MulMul~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*f
_class\
ZXloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu

mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_accStackV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*f
_class\
ZXloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu
ę
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(

sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/EnterSsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ä
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0
˙
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEntermgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/SumSumggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mulygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ś
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/ReshapeReshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1Multgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1

ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_accStackV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/Const*
	elem_type0*k
_classa
_]loc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:
î
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
¤
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/EnterXsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1^gradients/Add*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( *
T0
Č
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Sum_1Sumigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ź
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape_1Reshapeigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Sum_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
tgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshapen^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape_1

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshapeu^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape_1u^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Reshape_1
˘
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradpgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/control_dependency_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradtgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_grad/ReluGradReluGrad~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/tuple/control_dependency_1rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
:gradients/sec_lstm/rnn/while/Switch_3_grad_1/NextIterationNextIterationzgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ý
ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/ShapeShapeVsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2*
T0*
out_type0*
_output_shapes
:
ź
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
˝
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ä
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*z
_classp
nlloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape*
dtype0*
_output_shapes
: 
Â
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*z
_classp
nlloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape

}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/EnterEnter}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
Ă
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/Enterggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
Ů
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
 
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

egradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/SumSumqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_grad/SigmoidGradwgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
 
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/ReshapeReshapeegradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Sumgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Sum_1Sumqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_grad/SigmoidGradygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ů
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape_1Reshapeggradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Sum_1igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ô
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/group_depsNoOpj^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshapel^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape_1

zgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/control_dependencyIdentityigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshapes^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*|
_classr
pnloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/control_dependency_1Identitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape_1s^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Reshape_1*
_output_shapes
: 

jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concatConcatV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1_grad/SigmoidGradkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_grad/ReluGradzgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2_grad/SigmoidGradpgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat/Const*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *

Tidx0
Â
pgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
¨
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat*
data_formatNHWC*
_output_shapes
: *
T0
ß
vgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpr^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/BiasAddGradk^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat
 
~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concatw^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*}
_classs
qoloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_grad/concat
Ľ
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identityqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/BiasAddGradw^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_classz
xvloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Â
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMulMatMul~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul/Enter*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
Ŕ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1MatMulxgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
¨
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat*
dtype0*
_output_shapes
: 

sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*h
_class^
\Zloc:@sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat
ö
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
Š
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/EnterUsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Đ
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
Ű
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpl^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMuln^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1
 
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentitykgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMulv^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Identitymgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_classv
trloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1*
_output_shapes

: 
Ü
gradients/AddN_5AddNgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class|
zxloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2_grad/BiasAddGrad*
N*
_output_shapes
: 
ž
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueB *    *
dtype0*
_output_shapes
: 
ţ
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context

sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergesgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes

: : 
ą
rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0* 
_output_shapes
: : 
Ł
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/AddAddtgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/Switch:1gradients/AddN_5*
T0*
_output_shapes
: 
 
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes
: 

sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes
: 
ź
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
ť
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
ě
hgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/modFloorModjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Constigradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Rank*
_output_shapes
: *
T0
Î
jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeShape$sec_lstm/rnn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
Ť
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeNShapeNvgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N* 
_output_shapes
::
ő
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*7
_class-
+)loc:@sec_lstm/rnn/while/TensorArrayReadV3*
dtype0*
_output_shapes
: 
ç
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_accStackV2qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Const*7
_class-
+)loc:@sec_lstm/rnn/while/TensorArrayReadV3*

stack_name *
_output_shapes
:*
	elem_type0
ň
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/EnterEnterqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
ô
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter$sec_lstm/rnn/while/TensorArrayReadV3^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Ě
vgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

|gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context
đ
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_4
ä
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1StackV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Const_1*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_4*

stack_name *
_output_shapes
:*
	elem_type0
ö
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter_1Entersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context*
T0*
is_constant(
ń
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter_1sec_lstm/rnn/while/Identity_4^gradients/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
swap_memory( 
Đ
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	elem_type0

~gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPopV2_1/EnterEntersgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*
is_constant(
ň
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsethgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/modkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeNmgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::

jgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/SliceSlice}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependencyqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ConcatOffsetkgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice_1Slice}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependencysgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ConcatOffset:1mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/group_depsNoOpk^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slicem^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice_1

}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityjgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slicev^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/control_dependency_1Identitylgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice_1v^gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Slice_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
gradients/AddN_6AddNgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/tuple/control_dependency_1gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0*
_classx
vtloc:@gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1*
N*
_output_shapes

: 
Ĺ
pgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB *    *
dtype0*
_output_shapes

: 

rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_1Enterpgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes

: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context

rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_2Mergergradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_1xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/NextIteration*
N* 
_output_shapes
: : *
T0
ˇ
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*(
_output_shapes
: : *
T0
Ľ
ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/AddAddsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/Switch:1gradients/AddN_6*
T0*
_output_shapes

: 
˘
xgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/Add*
_output_shapes

: *
T0

rgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_3Exitqgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/Switch*
T0*
_output_shapes

: 
Ş
Ugradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3[gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*
source	gradients*=
_class3
1/loc:@sec_lstm/rnn/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
Î
[gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntersec_lstm/rnn/TensorArray_1*
parallel_iterations *
is_constant(*
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*=
_class3
1/loc:@sec_lstm/rnn/while/TensorArrayReadV3/Enter
ů
]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterGsec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
is_constant(*
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context*
T0*=
_class3
1/loc:@sec_lstm/rnn/while/TensorArrayReadV3/Enter
ô
Qgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentity]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1V^gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*=
_class3
1/loc:@sec_lstm/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 

Wgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Ugradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3bgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/control_dependencyQgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Ú
]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/ConstConst*
valueB :
˙˙˙˙˙˙˙˙˙*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_1*
dtype0*
_output_shapes
: 
¸
]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_accStackV2]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Const*
	elem_type0*0
_class&
$"loc:@sec_lstm/rnn/while/Identity_1*

stack_name *
_output_shapes
:
Ę
]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/EnterEnter]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*0

frame_name" sec_lstm/rnn/while/while_context
´
cgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2StackPushV2]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Entersec_lstm/rnn/while/Identity_1^gradients/Add*
T0*
_output_shapes
: *
swap_memory( 

bgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2
StackPopV2hgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
: 
ß
hgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2/EnterEnter]gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*:

frame_name,*gradients/sec_lstm/rnn/while/while_context

Agradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Cgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterAgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *:

frame_name,*gradients/sec_lstm/rnn/while/while_context

Cgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeCgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Igradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
É
Bgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchCgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0*
_output_shapes
: : 

?gradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddDgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Wgradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ź
Igradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration?gradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
°
Cgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitBgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
ţ
:gradients/sec_lstm/rnn/while/Switch_4_grad_1/NextIterationNextIterationgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/tuple/control_dependency_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ň
xgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3sec_lstm/rnn/TensorArray_1Cgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes

:: *
source	gradients*-
_class#
!loc:@sec_lstm/rnn/TensorArray_1

tgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityCgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3y^gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*-
_class#
!loc:@sec_lstm/rnn/TensorArray_1*
_output_shapes
: 
ň
jgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3xgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3%sec_lstm/rnn/TensorArrayUnstack/rangetgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_shape:
˘
ggradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpk^gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3D^gradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3

ogradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityjgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3h^gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
qgradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1IdentityCgradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3h^gradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/sec_lstm/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 

7gradients/sec_lstm/rnn/transpose_grad/InvertPermutationInvertPermutationsec_lstm/rnn/concat*
T0*
_output_shapes
:
Š
/gradients/sec_lstm/rnn/transpose_grad/transpose	Transposeogradients/sec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency7gradients/sec_lstm/rnn/transpose_grad/InvertPermutation*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
s
'gradients/sec_lstm/Reshape_1_grad/ShapeShapesec_lstm/add*
T0*
out_type0*
_output_shapes
:
Î
)gradients/sec_lstm/Reshape_1_grad/ReshapeReshape/gradients/sec_lstm/rnn/transpose_grad/transpose'gradients/sec_lstm/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
!gradients/sec_lstm/add_grad/ShapeShapesec_lstm/MatMul*
_output_shapes
:*
T0*
out_type0
m
#gradients/sec_lstm/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
Ď
1gradients/sec_lstm/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/sec_lstm/add_grad/Shape#gradients/sec_lstm/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ä
gradients/sec_lstm/add_grad/SumSum)gradients/sec_lstm/Reshape_1_grad/Reshape1gradients/sec_lstm/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
˛
#gradients/sec_lstm/add_grad/ReshapeReshapegradients/sec_lstm/add_grad/Sum!gradients/sec_lstm/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
!gradients/sec_lstm/add_grad/Sum_1Sum)gradients/sec_lstm/Reshape_1_grad/Reshape3gradients/sec_lstm/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ť
%gradients/sec_lstm/add_grad/Reshape_1Reshape!gradients/sec_lstm/add_grad/Sum_1#gradients/sec_lstm/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

,gradients/sec_lstm/add_grad/tuple/group_depsNoOp$^gradients/sec_lstm/add_grad/Reshape&^gradients/sec_lstm/add_grad/Reshape_1
ţ
4gradients/sec_lstm/add_grad/tuple/control_dependencyIdentity#gradients/sec_lstm/add_grad/Reshape-^gradients/sec_lstm/add_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*6
_class,
*(loc:@gradients/sec_lstm/add_grad/Reshape
÷
6gradients/sec_lstm/add_grad/tuple/control_dependency_1Identity%gradients/sec_lstm/add_grad/Reshape_1-^gradients/sec_lstm/add_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/sec_lstm/add_grad/Reshape_1*
_output_shapes
:
Ô
%gradients/sec_lstm/MatMul_grad/MatMulMatMul4gradients/sec_lstm/add_grad/tuple/control_dependencyself_variable/in/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[*
transpose_a( *
transpose_b(
Č
'gradients/sec_lstm/MatMul_grad/MatMul_1MatMulsec_lstm/Reshape4gradients/sec_lstm/add_grad/tuple/control_dependency*
T0*
_output_shapes

:[*
transpose_a(*
transpose_b( 

/gradients/sec_lstm/MatMul_grad/tuple/group_depsNoOp&^gradients/sec_lstm/MatMul_grad/MatMul(^gradients/sec_lstm/MatMul_grad/MatMul_1

7gradients/sec_lstm/MatMul_grad/tuple/control_dependencyIdentity%gradients/sec_lstm/MatMul_grad/MatMul0^gradients/sec_lstm/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/sec_lstm/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[

9gradients/sec_lstm/MatMul_grad/tuple/control_dependency_1Identity'gradients/sec_lstm/MatMul_grad/MatMul_10^gradients/sec_lstm/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/sec_lstm/MatMul_grad/MatMul_1*
_output_shapes

:[
ľ
beta1_power/initial_valueConst*
valueB
 *fff?*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
Ć
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape: 
ĺ
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ą
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
ľ
beta2_power/initial_valueConst*
valueB
 *wž?*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
Ć
beta2_power
VariableV2*
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
ĺ
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ą
beta2_power/readIdentitybeta2_power*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
Ą
'self_variable/in/Adam/Initializer/zerosConst*#
_class
loc:@self_variable/in*
valueB[*    *
dtype0*
_output_shapes

:[
Ž
self_variable/in/Adam
VariableV2*
dtype0*
_output_shapes

:[*
shared_name *#
_class
loc:@self_variable/in*
	container *
shape
:[
Ý
self_variable/in/Adam/AssignAssignself_variable/in/Adam'self_variable/in/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[

self_variable/in/Adam/readIdentityself_variable/in/Adam*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
Ł
)self_variable/in/Adam_1/Initializer/zerosConst*#
_class
loc:@self_variable/in*
valueB[*    *
dtype0*
_output_shapes

:[
°
self_variable/in/Adam_1
VariableV2*
shape
:[*
dtype0*
_output_shapes

:[*
shared_name *#
_class
loc:@self_variable/in*
	container 
ă
self_variable/in/Adam_1/AssignAssignself_variable/in/Adam_1)self_variable/in/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[

self_variable/in/Adam_1/readIdentityself_variable/in/Adam_1*
T0*#
_class
loc:@self_variable/in*
_output_shapes

:[
Ł
(self_variable/out/Adam/Initializer/zerosConst*$
_class
loc:@self_variable/out*
valueB*    *
dtype0*
_output_shapes

:
°
self_variable/out/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *$
_class
loc:@self_variable/out*
	container *
shape
:
á
self_variable/out/Adam/AssignAssignself_variable/out/Adam(self_variable/out/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:

self_variable/out/Adam/readIdentityself_variable/out/Adam*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
Ľ
*self_variable/out/Adam_1/Initializer/zerosConst*$
_class
loc:@self_variable/out*
valueB*    *
dtype0*
_output_shapes

:
˛
self_variable/out/Adam_1
VariableV2*
shared_name *$
_class
loc:@self_variable/out*
	container *
shape
:*
dtype0*
_output_shapes

:
ç
self_variable/out/Adam_1/AssignAssignself_variable/out/Adam_1*self_variable/out/Adam_1/Initializer/zeros*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(

self_variable/out/Adam_1/readIdentityself_variable/out/Adam_1*
T0*$
_class
loc:@self_variable/out*
_output_shapes

:
Ľ
-self_variable/Variable/Adam/Initializer/zerosConst*)
_class
loc:@self_variable/Variable*
valueB*    *
dtype0*
_output_shapes
:
˛
self_variable/Variable/Adam
VariableV2*)
_class
loc:@self_variable/Variable*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
ń
"self_variable/Variable/Adam/AssignAssignself_variable/Variable/Adam-self_variable/Variable/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:

 self_variable/Variable/Adam/readIdentityself_variable/Variable/Adam*
T0*)
_class
loc:@self_variable/Variable*
_output_shapes
:
§
/self_variable/Variable/Adam_1/Initializer/zerosConst*)
_class
loc:@self_variable/Variable*
valueB*    *
dtype0*
_output_shapes
:
´
self_variable/Variable/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *)
_class
loc:@self_variable/Variable
÷
$self_variable/Variable/Adam_1/AssignAssignself_variable/Variable/Adam_1/self_variable/Variable/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:

"self_variable/Variable/Adam_1/readIdentityself_variable/Variable/Adam_1*
_output_shapes
:*
T0*)
_class
loc:@self_variable/Variable
Š
/self_variable/Variable_1/Adam/Initializer/zerosConst*+
_class!
loc:@self_variable/Variable_1*
valueB*    *
dtype0*
_output_shapes
:
ś
self_variable/Variable_1/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@self_variable/Variable_1
ů
$self_variable/Variable_1/Adam/AssignAssignself_variable/Variable_1/Adam/self_variable/Variable_1/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1

"self_variable/Variable_1/Adam/readIdentityself_variable/Variable_1/Adam*
T0*+
_class!
loc:@self_variable/Variable_1*
_output_shapes
:
Ť
1self_variable/Variable_1/Adam_1/Initializer/zerosConst*+
_class!
loc:@self_variable/Variable_1*
valueB*    *
dtype0*
_output_shapes
:
¸
self_variable/Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@self_variable/Variable_1*
	container 
˙
&self_variable/Variable_1/Adam_1/AssignAssignself_variable/Variable_1/Adam_11self_variable/Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Ł
$self_variable/Variable_1/Adam_1/readIdentityself_variable/Variable_1/Adam_1*
_output_shapes
:*
T0*+
_class!
loc:@self_variable/Variable_1

[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/Initializer/zerosConst*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB *    *
dtype0*
_output_shapes

: 

Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam
VariableV2*
dtype0*
_output_shapes

: *
shared_name *W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape
: 
­
Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/AssignAssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
§
Nsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/readIdentityIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
_output_shapes

: 

]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/Initializer/zerosConst*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
valueB *    *
dtype0*
_output_shapes

: 

Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1
VariableV2*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
ł
Rsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/AssignAssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ť
Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/readIdentityKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1*
_output_shapes

: *
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
ý
Ysec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
: *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB *    

Gsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
	container *
shape: 
Ą
Nsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/AssignAssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamYsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

Lsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/readIdentityGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
˙
[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/Initializer/zerosConst*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
valueB *    *
dtype0*
_output_shapes
: 

Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
§
Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/AssignAssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ą
Nsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/readIdentityIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *wž?
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 

&Adam/update_self_variable/in/ApplyAdam	ApplyAdamself_variable/inself_variable/in/Adamself_variable/in/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/sec_lstm/MatMul_grad/tuple/control_dependency_1*
T0*#
_class
loc:@self_variable/in*
use_nesterov( *
_output_shapes

:[*
use_locking( 

'Adam/update_self_variable/out/ApplyAdam	ApplyAdamself_variable/outself_variable/out/Adamself_variable/out/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon;gradients/sec_lstm/MatMul_1_grad/tuple/control_dependency_1*
T0*$
_class
loc:@self_variable/out*
use_nesterov( *
_output_shapes

:*
use_locking( 

,Adam/update_self_variable/Variable/ApplyAdam	ApplyAdamself_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon6gradients/sec_lstm/add_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@self_variable/Variable*
use_nesterov( *
_output_shapes
:
¤
.Adam/update_self_variable/Variable_1/ApplyAdam	ApplyAdamself_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/sec_lstm/add_1_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*+
_class!
loc:@self_variable/Variable_1
ž
ZAdam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/ApplyAdam	ApplyAdamDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilonrgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
use_locking( *
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
use_nesterov( *
_output_shapes

: 
ą
XAdam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/ApplyAdam	ApplyAdamBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilonsgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
use_nesterov( *
_output_shapes
: 

Adam/mulMulbeta1_power/read
Adam/beta1Y^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/ApplyAdam[^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/ApplyAdam-^Adam/update_self_variable/Variable/ApplyAdam/^Adam/update_self_variable/Variable_1/ApplyAdam'^Adam/update_self_variable/in/ApplyAdam(^Adam/update_self_variable/out/ApplyAdam*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
Í
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias


Adam/mul_1Mulbeta2_power/read
Adam/beta2Y^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/ApplyAdam[^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/ApplyAdam-^Adam/update_self_variable/Variable/ApplyAdam/^Adam/update_self_variable/Variable_1/ApplyAdam'^Adam/update_self_variable/in/ApplyAdam(^Adam/update_self_variable/out/ApplyAdam*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
_output_shapes
: 
Ń
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

Adam/updateNoOp^Adam/Assign^Adam/Assign_1Y^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/ApplyAdam[^Adam/update_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/ApplyAdam-^Adam/update_self_variable/Variable/ApplyAdam/^Adam/update_self_variable/Variable_1/ApplyAdam'^Adam/update_self_variable/in/ApplyAdam(^Adam/update_self_variable/out/ApplyAdam
w

Adam/valueConst^Adam/update*
value	B :*
_class
loc:@Variable*
dtype0*
_output_shapes
: 
x
Adam	AssignAddVariable
Adam/value*
use_locking( *
T0*
_class
loc:@Variable*
_output_shapes
: 

$mean_squared_error/SquaredDifferenceSquaredDifferenceself_variable/Placeholder_2sec_lstm/add_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
5mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
v
4mean_squared_error/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 

4mean_squared_error/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:
u
3mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
K
Cmean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
¤
mean_squared_error/Cast/xConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?

mean_squared_error/MulMul$mean_squared_error/SquaredDifferencemean_squared_error/Cast/x*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
mean_squared_error/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:

mean_squared_error/SumSummean_squared_error/Mulmean_squared_error/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ą
&mean_squared_error/num_present/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

$mean_squared_error/num_present/EqualEqualmean_squared_error/Cast/x&mean_squared_error/num_present/Equal/y*
_output_shapes
: *
T0
´
)mean_squared_error/num_present/zeros_likeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
ˇ
.mean_squared_error/num_present/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
š
.mean_squared_error/num_present/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ă
(mean_squared_error/num_present/ones_likeFill.mean_squared_error/num_present/ones_like/Shape.mean_squared_error/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
Ë
%mean_squared_error/num_present/SelectSelect$mean_squared_error/num_present/Equal)mean_squared_error/num_present/zeros_like(mean_squared_error/num_present/ones_like*
T0*
_output_shapes
: 
Ü
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Ú
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ü
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
Ů
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
Ż
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpD^mean_squared_error/assert_broadcastable/static_scalar_check_success
Î
@mean_squared_error/num_present/broadcast_weights/ones_like/ShapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ż
@mean_squared_error/num_present/broadcast_weights/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

:mean_squared_error/num_present/broadcast_weights/ones_likeFill@mean_squared_error/num_present/broadcast_weights/ones_like/Shape@mean_squared_error/num_present/broadcast_weights/ones_like/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0
Ě
0mean_squared_error/num_present/broadcast_weightsMul%mean_squared_error/num_present/Select:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
$mean_squared_error/num_present/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
ť
mean_squared_error/num_presentSum0mean_squared_error/num_present/broadcast_weights$mean_squared_error/num_present/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Ł
mean_squared_error/Const_1ConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

mean_squared_error/Sum_1Summean_squared_error/Summean_squared_error/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

mean_squared_error/valueDivNoNanmean_squared_error/Sum_1mean_squared_error/num_present*
_output_shapes
: *
T0
Ă
initNoOp^Variable/Assign^beta1_power/Assign^beta2_power/AssignO^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/AssignQ^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/AssignJ^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignQ^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/AssignS^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/AssignL^sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Assign#^self_variable/Variable/Adam/Assign%^self_variable/Variable/Adam_1/Assign^self_variable/Variable/Assign%^self_variable/Variable_1/Adam/Assign'^self_variable/Variable_1/Adam_1/Assign ^self_variable/Variable_1/Assign^self_variable/in/Adam/Assign^self_variable/in/Adam_1/Assign^self_variable/in/Assign^self_variable/out/Adam/Assign ^self_variable/out/Adam_1/Assign^self_variable/out/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_54893156bb974429982875f65f4e43a3/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ś
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2

save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
×
save/Assign_1Assignbeta1_powersave/RestoreV2:1*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
×
save/Assign_2Assignbeta2_powersave/RestoreV2:2*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave/RestoreV2:3*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave/RestoreV2:4*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save/RestoreV2:5*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave/RestoreV2:6*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 

save/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave/RestoreV2:7*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
Ą
save/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
ş
save/Assign_9Assignself_variable/Variablesave/RestoreV2:9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@self_variable/Variable
Á
save/Assign_10Assignself_variable/Variable/Adamsave/RestoreV2:10*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ă
save/Assign_11Assignself_variable/Variable/Adam_1save/RestoreV2:11*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ŕ
save/Assign_12Assignself_variable/Variable_1save/RestoreV2:12*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Ĺ
save/Assign_13Assignself_variable/Variable_1/Adamsave/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
Ç
save/Assign_14Assignself_variable/Variable_1/Adam_1save/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
´
save/Assign_15Assignself_variable/insave/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
š
save/Assign_16Assignself_variable/in/Adamsave/RestoreV2:16*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
ť
save/Assign_17Assignself_variable/in/Adam_1save/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
ś
save/Assign_18Assignself_variable/outsave/RestoreV2:18*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
ť
save/Assign_19Assignself_variable/out/Adamsave/RestoreV2:19*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(
˝
save/Assign_20Assignself_variable/out/Adam_1save/RestoreV2:20*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
ó
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_2da826a90f4a4e8b8a7082f6de75c214/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ž
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
˛
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
_output_shapes
: *
T0

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Ą
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B 

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2*h
_output_shapesV
T:::::::::::::::::::::

save_1/AssignAssignVariablesave_1/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Ű
save_1/Assign_1Assignbeta1_powersave_1/RestoreV2:1*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ű
save_1/Assign_2Assignbeta2_powersave_1/RestoreV2:2*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_1/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_1/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_1/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_1/RestoreV2:4*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_1/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_1/RestoreV2:5*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_1/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_1/RestoreV2:6*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ł
save_1/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_1/RestoreV2:7*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ľ
save_1/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_1/RestoreV2:8*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
ž
save_1/Assign_9Assignself_variable/Variablesave_1/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ĺ
save_1/Assign_10Assignself_variable/Variable/Adamsave_1/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@self_variable/Variable
Ç
save_1/Assign_11Assignself_variable/Variable/Adam_1save_1/RestoreV2:11*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ä
save_1/Assign_12Assignself_variable/Variable_1save_1/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
É
save_1/Assign_13Assignself_variable/Variable_1/Adamsave_1/RestoreV2:13*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
Ë
save_1/Assign_14Assignself_variable/Variable_1/Adam_1save_1/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
¸
save_1/Assign_15Assignself_variable/insave_1/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
˝
save_1/Assign_16Assignself_variable/in/Adamsave_1/RestoreV2:16*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
ż
save_1/Assign_17Assignself_variable/in/Adam_1save_1/RestoreV2:17*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
ş
save_1/Assign_18Assignself_variable/outsave_1/RestoreV2:18*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
ż
save_1/Assign_19Assignself_variable/out/Adamsave_1/RestoreV2:19*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(
Á
save_1/Assign_20Assignself_variable/out/Adam_1save_1/RestoreV2:20*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
dtype0*
_output_shapes
: *
shape: 

save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_a96f0f24c0ed4ebda525d19e30536343/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 

save_2/SaveV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:

save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ž
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
¨
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_2/ShardedFilename
˛
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save_2/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1
Ą
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B 

save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2*h
_output_shapesV
T:::::::::::::::::::::

save_2/AssignAssignVariablesave_2/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ű
save_2/Assign_1Assignbeta1_powersave_2/RestoreV2:1*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Ű
save_2/Assign_2Assignbeta2_powersave_2/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_2/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_2/RestoreV2:3*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_2/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_2/RestoreV2:4*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_2/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_2/RestoreV2:5*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(

save_2/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_2/RestoreV2:6*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Ł
save_2/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_2/RestoreV2:7*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ľ
save_2/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_2/RestoreV2:8*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
ž
save_2/Assign_9Assignself_variable/Variablesave_2/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ĺ
save_2/Assign_10Assignself_variable/Variable/Adamsave_2/RestoreV2:10*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ç
save_2/Assign_11Assignself_variable/Variable/Adam_1save_2/RestoreV2:11*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ä
save_2/Assign_12Assignself_variable/Variable_1save_2/RestoreV2:12*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
É
save_2/Assign_13Assignself_variable/Variable_1/Adamsave_2/RestoreV2:13*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Ë
save_2/Assign_14Assignself_variable/Variable_1/Adam_1save_2/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
¸
save_2/Assign_15Assignself_variable/insave_2/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
˝
save_2/Assign_16Assignself_variable/in/Adamsave_2/RestoreV2:16*
validate_shape(*
_output_shapes

:[*
use_locking(*
T0*#
_class
loc:@self_variable/in
ż
save_2/Assign_17Assignself_variable/in/Adam_1save_2/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
ş
save_2/Assign_18Assignself_variable/outsave_2/RestoreV2:18*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
ż
save_2/Assign_19Assignself_variable/out/Adamsave_2/RestoreV2:19*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(
Á
save_2/Assign_20Assignself_variable/out/Adam_1save_2/RestoreV2:20*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:

save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
dtype0*
_output_shapes
: *
shape: 

save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_a82a1814e1514b958fadbbce32001a3d/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_3/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
m
save_3/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 

save_3/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1

save_3/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ž
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
¨
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
˛
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const"/device:CPU:0*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save_3/RestoreV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Ą
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2*h
_output_shapesV
T:::::::::::::::::::::

save_3/AssignAssignVariablesave_3/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ű
save_3/Assign_1Assignbeta1_powersave_3/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias
Ű
save_3/Assign_2Assignbeta2_powersave_3/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_3/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_3/RestoreV2:3*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_3/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_3/RestoreV2:4*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_3/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_3/RestoreV2:5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_3/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_3/RestoreV2:6*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ł
save_3/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_3/RestoreV2:7*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
Ľ
save_3/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_3/RestoreV2:8*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
ž
save_3/Assign_9Assignself_variable/Variablesave_3/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ĺ
save_3/Assign_10Assignself_variable/Variable/Adamsave_3/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@self_variable/Variable
Ç
save_3/Assign_11Assignself_variable/Variable/Adam_1save_3/RestoreV2:11*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
Ä
save_3/Assign_12Assignself_variable/Variable_1save_3/RestoreV2:12*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
É
save_3/Assign_13Assignself_variable/Variable_1/Adamsave_3/RestoreV2:13*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Ë
save_3/Assign_14Assignself_variable/Variable_1/Adam_1save_3/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
¸
save_3/Assign_15Assignself_variable/insave_3/RestoreV2:15*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
˝
save_3/Assign_16Assignself_variable/in/Adamsave_3/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
ż
save_3/Assign_17Assignself_variable/in/Adam_1save_3/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
ş
save_3/Assign_18Assignself_variable/outsave_3/RestoreV2:18*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
ż
save_3/Assign_19Assignself_variable/out/Adamsave_3/RestoreV2:19*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(
Á
save_3/Assign_20Assignself_variable/out/Adam_1save_3/RestoreV2:20*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(

save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
shape: *
dtype0*
_output_shapes
: 

save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_b267cd23ccf745699781c1f2a41346ae/part*
dtype0*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_4/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_4/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards"/device:CPU:0*
_output_shapes
: 

save_4/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1

save_4/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ž
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
¨
save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: 
˛
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const"/device:CPU:0*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save_4/RestoreV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Ą
!save_4/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2*h
_output_shapesV
T:::::::::::::::::::::

save_4/AssignAssignVariablesave_4/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ű
save_4/Assign_1Assignbeta1_powersave_4/RestoreV2:1*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Ű
save_4/Assign_2Assignbeta2_powersave_4/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_4/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_4/RestoreV2:3*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(

save_4/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_4/RestoreV2:4*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(

save_4/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_4/RestoreV2:5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_4/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_4/RestoreV2:6*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ł
save_4/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_4/RestoreV2:7*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel
Ľ
save_4/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_4/RestoreV2:8*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
ž
save_4/Assign_9Assignself_variable/Variablesave_4/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ĺ
save_4/Assign_10Assignself_variable/Variable/Adamsave_4/RestoreV2:10*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ç
save_4/Assign_11Assignself_variable/Variable/Adam_1save_4/RestoreV2:11*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ä
save_4/Assign_12Assignself_variable/Variable_1save_4/RestoreV2:12*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
É
save_4/Assign_13Assignself_variable/Variable_1/Adamsave_4/RestoreV2:13*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
Ë
save_4/Assign_14Assignself_variable/Variable_1/Adam_1save_4/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
¸
save_4/Assign_15Assignself_variable/insave_4/RestoreV2:15*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
˝
save_4/Assign_16Assignself_variable/in/Adamsave_4/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
ż
save_4/Assign_17Assignself_variable/in/Adam_1save_4/RestoreV2:17*
validate_shape(*
_output_shapes

:[*
use_locking(*
T0*#
_class
loc:@self_variable/in
ş
save_4/Assign_18Assignself_variable/outsave_4/RestoreV2:18*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
ż
save_4/Assign_19Assignself_variable/out/Adamsave_4/RestoreV2:19*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(
Á
save_4/Assign_20Assignself_variable/out/Adam_1save_4/RestoreV2:20*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:

save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_3^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
1
save_4/restore_allNoOp^save_4/restore_shard
[
save_5/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_5/filenamePlaceholderWithDefaultsave_5/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_5/ConstPlaceholderWithDefaultsave_5/filename*
dtype0*
_output_shapes
: *
shape: 

save_5/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_6becc7a6b30e4da5b5f116f4f598c5a4/part
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_5/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
m
save_5/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards"/device:CPU:0*
_output_shapes
: 

save_5/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1

save_5/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ž
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
¨
save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_5/ShardedFilename*
_output_shapes
: 
˛
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const"/device:CPU:0*
delete_old_dirs(

save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency"/device:CPU:0*
_output_shapes
: *
T0

save_5/RestoreV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Ą
!save_5/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2

save_5/AssignAssignVariablesave_5/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
Ű
save_5/Assign_1Assignbeta1_powersave_5/RestoreV2:1*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Ű
save_5/Assign_2Assignbeta2_powersave_5/RestoreV2:2*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(

save_5/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_5/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_5/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_5/RestoreV2:4*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_5/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_5/RestoreV2:5*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_5/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_5/RestoreV2:6*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ł
save_5/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_5/RestoreV2:7*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ľ
save_5/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_5/RestoreV2:8*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
ž
save_5/Assign_9Assignself_variable/Variablesave_5/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ĺ
save_5/Assign_10Assignself_variable/Variable/Adamsave_5/RestoreV2:10*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ç
save_5/Assign_11Assignself_variable/Variable/Adam_1save_5/RestoreV2:11*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
Ä
save_5/Assign_12Assignself_variable/Variable_1save_5/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
É
save_5/Assign_13Assignself_variable/Variable_1/Adamsave_5/RestoreV2:13*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
Ë
save_5/Assign_14Assignself_variable/Variable_1/Adam_1save_5/RestoreV2:14*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
¸
save_5/Assign_15Assignself_variable/insave_5/RestoreV2:15*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[*
use_locking(
˝
save_5/Assign_16Assignself_variable/in/Adamsave_5/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
ż
save_5/Assign_17Assignself_variable/in/Adam_1save_5/RestoreV2:17*
validate_shape(*
_output_shapes

:[*
use_locking(*
T0*#
_class
loc:@self_variable/in
ş
save_5/Assign_18Assignself_variable/outsave_5/RestoreV2:18*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
ż
save_5/Assign_19Assignself_variable/out/Adamsave_5/RestoreV2:19*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
Á
save_5/Assign_20Assignself_variable/out/Adam_1save_5/RestoreV2:20*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(

save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_18^save_5/Assign_19^save_5/Assign_2^save_5/Assign_20^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
1
save_5/restore_allNoOp^save_5/restore_shard
[
save_6/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_6/filenamePlaceholderWithDefaultsave_6/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_6/ConstPlaceholderWithDefaultsave_6/filename*
dtype0*
_output_shapes
: *
shape: 

save_6/StringJoin/inputs_1Const*<
value3B1 B+_temp_0f0d9ae9d6274bbaa796282691eef761/part*
dtype0*
_output_shapes
: 
{
save_6/StringJoin
StringJoinsave_6/Constsave_6/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_6/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
m
save_6/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_6/ShardedFilenameShardedFilenamesave_6/StringJoinsave_6/ShardedFilename/shardsave_6/num_shards"/device:CPU:0*
_output_shapes
: 

save_6/SaveV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:

save_6/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
Ž
save_6/SaveV2SaveV2save_6/ShardedFilenamesave_6/SaveV2/tensor_namessave_6/SaveV2/shape_and_slicesVariablebeta1_powerbeta2_powerBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1self_variable/Variableself_variable/Variable/Adamself_variable/Variable/Adam_1self_variable/Variable_1self_variable/Variable_1/Adamself_variable/Variable_1/Adam_1self_variable/inself_variable/in/Adamself_variable/in/Adam_1self_variable/outself_variable/out/Adamself_variable/out/Adam_1"/device:CPU:0*#
dtypes
2
¨
save_6/control_dependencyIdentitysave_6/ShardedFilename^save_6/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save_6/ShardedFilename
˛
-save_6/MergeV2Checkpoints/checkpoint_prefixesPacksave_6/ShardedFilename^save_6/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save_6/MergeV2CheckpointsMergeV2Checkpoints-save_6/MergeV2Checkpoints/checkpoint_prefixessave_6/Const"/device:CPU:0*
delete_old_dirs(

save_6/IdentityIdentitysave_6/Const^save_6/MergeV2Checkpoints^save_6/control_dependency"/device:CPU:0*
_output_shapes
: *
T0

save_6/RestoreV2/tensor_namesConst"/device:CPU:0*¤
valueBBVariableBbeta1_powerBbeta2_powerBBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biasBGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AdamBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1BDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelBIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AdamBKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1Bself_variable/VariableBself_variable/Variable/AdamBself_variable/Variable/Adam_1Bself_variable/Variable_1Bself_variable/Variable_1/AdamBself_variable/Variable_1/Adam_1Bself_variable/inBself_variable/in/AdamBself_variable/in/Adam_1Bself_variable/outBself_variable/out/AdamBself_variable/out/Adam_1*
dtype0*
_output_shapes
:
Ą
!save_6/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_6/RestoreV2	RestoreV2save_6/Constsave_6/RestoreV2/tensor_names!save_6/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2

save_6/AssignAssignVariablesave_6/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
Ű
save_6/Assign_1Assignbeta1_powersave_6/RestoreV2:1*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Ű
save_6/Assign_2Assignbeta2_powersave_6/RestoreV2:2*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_6/Assign_3AssignBsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/biassave_6/RestoreV2:3*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_6/Assign_4AssignGsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adamsave_6/RestoreV2:4*
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 

save_6/Assign_5AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1save_6/RestoreV2:5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*U
_classK
IGloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias

save_6/Assign_6AssignDsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernelsave_6/RestoreV2:6*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ł
save_6/Assign_7AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adamsave_6/RestoreV2:7*
use_locking(*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: 
Ľ
save_6/Assign_8AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1save_6/RestoreV2:8*
T0*W
_classM
KIloc:@sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
ž
save_6/Assign_9Assignself_variable/Variablesave_6/RestoreV2:9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@self_variable/Variable
Ĺ
save_6/Assign_10Assignself_variable/Variable/Adamsave_6/RestoreV2:10*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
Ç
save_6/Assign_11Assignself_variable/Variable/Adam_1save_6/RestoreV2:11*
use_locking(*
T0*)
_class
loc:@self_variable/Variable*
validate_shape(*
_output_shapes
:
Ä
save_6/Assign_12Assignself_variable/Variable_1save_6/RestoreV2:12*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
É
save_6/Assign_13Assignself_variable/Variable_1/Adamsave_6/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1
Ë
save_6/Assign_14Assignself_variable/Variable_1/Adam_1save_6/RestoreV2:14*
use_locking(*
T0*+
_class!
loc:@self_variable/Variable_1*
validate_shape(*
_output_shapes
:
¸
save_6/Assign_15Assignself_variable/insave_6/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
˝
save_6/Assign_16Assignself_variable/in/Adamsave_6/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
ż
save_6/Assign_17Assignself_variable/in/Adam_1save_6/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@self_variable/in*
validate_shape(*
_output_shapes

:[
ş
save_6/Assign_18Assignself_variable/outsave_6/RestoreV2:18*
use_locking(*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:
ż
save_6/Assign_19Assignself_variable/out/Adamsave_6/RestoreV2:19*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*$
_class
loc:@self_variable/out
Á
save_6/Assign_20Assignself_variable/out/Adam_1save_6/RestoreV2:20*
T0*$
_class
loc:@self_variable/out*
validate_shape(*
_output_shapes

:*
use_locking(

save_6/restore_shardNoOp^save_6/Assign^save_6/Assign_1^save_6/Assign_10^save_6/Assign_11^save_6/Assign_12^save_6/Assign_13^save_6/Assign_14^save_6/Assign_15^save_6/Assign_16^save_6/Assign_17^save_6/Assign_18^save_6/Assign_19^save_6/Assign_2^save_6/Assign_20^save_6/Assign_3^save_6/Assign_4^save_6/Assign_5^save_6/Assign_6^save_6/Assign_7^save_6/Assign_8^save_6/Assign_9
1
save_6/restore_allNoOp^save_6/restore_shard"&B
save_6/Const:0save_6/Identity:0save_6/restore_all (5 @F8"(
losses

mean_squared_error/value:0"	
trainable_variables÷ô
y
self_variable/in:0self_variable/in/Assignself_variable/in/read:02/self_variable/in/Initializer/truncated_normal:08
}
self_variable/out:0self_variable/out/Assignself_variable/out/read:020self_variable/out/Initializer/truncated_normal:08
q
self_variable/Variable:0self_variable/Variable/Assignself_variable/Variable/read:02self_variable/Const:08
y
self_variable/Variable_1:0self_variable/Variable_1/Assignself_variable/Variable_1/read:02self_variable/Const_1:08
Ç
Fsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:02asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform:08
ż
Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:02_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform:08"
train_op

Adam"÷
	variableséć
y
self_variable/in:0self_variable/in/Assignself_variable/in/read:02/self_variable/in/Initializer/truncated_normal:08
}
self_variable/out:0self_variable/out/Assignself_variable/out/read:020self_variable/out/Initializer/truncated_normal:08
q
self_variable/Variable:0self_variable/Variable/Assignself_variable/Variable/read:02self_variable/Const:08
y
self_variable/Variable_1:0self_variable/Variable_1/Assignself_variable/Variable_1/read:02self_variable/Const_1:08
Ç
Fsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel:0Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/AssignKsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:02asec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Initializer/random_uniform:08
ż
Dsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias:0Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/AssignIsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:02_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Initializer/random_uniform:08
H

Variable:0Variable/AssignVariable/read:02Variable/initial_value:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0

self_variable/in/Adam:0self_variable/in/Adam/Assignself_variable/in/Adam/read:02)self_variable/in/Adam/Initializer/zeros:0

self_variable/in/Adam_1:0self_variable/in/Adam_1/Assignself_variable/in/Adam_1/read:02+self_variable/in/Adam_1/Initializer/zeros:0

self_variable/out/Adam:0self_variable/out/Adam/Assignself_variable/out/Adam/read:02*self_variable/out/Adam/Initializer/zeros:0

self_variable/out/Adam_1:0self_variable/out/Adam_1/Assignself_variable/out/Adam_1/read:02,self_variable/out/Adam_1/Initializer/zeros:0

self_variable/Variable/Adam:0"self_variable/Variable/Adam/Assign"self_variable/Variable/Adam/read:02/self_variable/Variable/Adam/Initializer/zeros:0
 
self_variable/Variable/Adam_1:0$self_variable/Variable/Adam_1/Assign$self_variable/Variable/Adam_1/read:021self_variable/Variable/Adam_1/Initializer/zeros:0
 
self_variable/Variable_1/Adam:0$self_variable/Variable_1/Adam/Assign$self_variable/Variable_1/Adam/read:021self_variable/Variable_1/Adam/Initializer/zeros:0
¨
!self_variable/Variable_1/Adam_1:0&self_variable/Variable_1/Adam_1/Assign&self_variable/Variable_1/Adam_1/read:023self_variable/Variable_1/Adam_1/Initializer/zeros:0
Đ
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam:0Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/AssignPsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/read:02]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam/Initializer/zeros:0
Ř
Msec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1:0Rsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/AssignRsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/read:02_sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
Č
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam:0Nsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/AssignNsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/read:02[sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam/Initializer/zeros:0
Đ
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1:0Psec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/AssignPsec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/read:02]sec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/Adam_1/Initializer/zeros:0"şű
while_context§űŁű
ű
 sec_lstm/rnn/while/while_context *sec_lstm/rnn/while/LoopCond:02sec_lstm/rnn/while/Merge:0:sec_lstm/rnn/while/Identity:0Bsec_lstm/rnn/while/Exit:0Bsec_lstm/rnn/while/Exit_1:0Bsec_lstm/rnn/while/Exit_2:0Bsec_lstm/rnn/while/Exit_3:0Bsec_lstm/rnn/while/Exit_4:0Bsec_lstm/rnn/while/Exit_5:0Bsec_lstm/rnn/while/Exit_6:0Bsec_lstm/rnn/while/Exit_7:0Bsec_lstm/rnn/while/Exit_8:0Bgradients/f_count_2:0Jžő
gradients/Add/y:0
gradients/Add:0
gradients/Merge:0
gradients/Merge:1
gradients/NextIteration:0
gradients/Switch:0
gradients/Switch:1
gradients/f_count:0
gradients/f_count_1:0
gradients/f_count_2:0
_gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0
egradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2:0
_gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/Enter:0
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/Enter:0
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/StackPushV2:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_acc:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/Shape:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/Shape:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc:0
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/Shape:0
ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/Shape:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter_1:0
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2:0
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/StackPushV2_1:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1:0
ngradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/Shape:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter_1:0
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2:0
}gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/StackPushV2_1:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1:0
lgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/Shape:0
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter_1:0
ygradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2:0
{gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/StackPushV2_1:0
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_acc:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/Enter:0
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/StackPushV2:0
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_acc:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Shape_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/Enter:0
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/StackPushV2:0
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_acc:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/Enter:0
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/StackPushV2:0
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_acc:0
igradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape:0
kgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Shape_1:0
sec_lstm/rnn/Minimum:0
sec_lstm/rnn/TensorArray:0
Isec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
sec_lstm/rnn/TensorArray_1:0
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0
sec_lstm/rnn/strided_slice_1:0
sec_lstm/rnn/while/Enter:0
sec_lstm/rnn/while/Enter_1:0
sec_lstm/rnn/while/Enter_2:0
sec_lstm/rnn/while/Enter_3:0
sec_lstm/rnn/while/Enter_4:0
sec_lstm/rnn/while/Enter_5:0
sec_lstm/rnn/while/Enter_6:0
sec_lstm/rnn/while/Enter_7:0
sec_lstm/rnn/while/Enter_8:0
sec_lstm/rnn/while/Exit:0
sec_lstm/rnn/while/Exit_1:0
sec_lstm/rnn/while/Exit_2:0
sec_lstm/rnn/while/Exit_3:0
sec_lstm/rnn/while/Exit_4:0
sec_lstm/rnn/while/Exit_5:0
sec_lstm/rnn/while/Exit_6:0
sec_lstm/rnn/while/Exit_7:0
sec_lstm/rnn/while/Exit_8:0
sec_lstm/rnn/while/Identity:0
sec_lstm/rnn/while/Identity_1:0
sec_lstm/rnn/while/Identity_2:0
sec_lstm/rnn/while/Identity_3:0
sec_lstm/rnn/while/Identity_4:0
sec_lstm/rnn/while/Identity_5:0
sec_lstm/rnn/while/Identity_6:0
sec_lstm/rnn/while/Identity_7:0
sec_lstm/rnn/while/Identity_8:0
sec_lstm/rnn/while/Less/Enter:0
sec_lstm/rnn/while/Less:0
!sec_lstm/rnn/while/Less_1/Enter:0
sec_lstm/rnn/while/Less_1:0
sec_lstm/rnn/while/LogicalAnd:0
sec_lstm/rnn/while/LoopCond:0
sec_lstm/rnn/while/Merge:0
sec_lstm/rnn/while/Merge:1
sec_lstm/rnn/while/Merge_1:0
sec_lstm/rnn/while/Merge_1:1
sec_lstm/rnn/while/Merge_2:0
sec_lstm/rnn/while/Merge_2:1
sec_lstm/rnn/while/Merge_3:0
sec_lstm/rnn/while/Merge_3:1
sec_lstm/rnn/while/Merge_4:0
sec_lstm/rnn/while/Merge_4:1
sec_lstm/rnn/while/Merge_5:0
sec_lstm/rnn/while/Merge_5:1
sec_lstm/rnn/while/Merge_6:0
sec_lstm/rnn/while/Merge_6:1
sec_lstm/rnn/while/Merge_7:0
sec_lstm/rnn/while/Merge_7:1
sec_lstm/rnn/while/Merge_8:0
sec_lstm/rnn/while/Merge_8:1
"sec_lstm/rnn/while/NextIteration:0
$sec_lstm/rnn/while/NextIteration_1:0
$sec_lstm/rnn/while/NextIteration_2:0
$sec_lstm/rnn/while/NextIteration_3:0
$sec_lstm/rnn/while/NextIteration_4:0
$sec_lstm/rnn/while/NextIteration_5:0
$sec_lstm/rnn/while/NextIteration_6:0
$sec_lstm/rnn/while/NextIteration_7:0
$sec_lstm/rnn/while/NextIteration_8:0
sec_lstm/rnn/while/Switch:0
sec_lstm/rnn/while/Switch:1
sec_lstm/rnn/while/Switch_1:0
sec_lstm/rnn/while/Switch_1:1
sec_lstm/rnn/while/Switch_2:0
sec_lstm/rnn/while/Switch_2:1
sec_lstm/rnn/while/Switch_3:0
sec_lstm/rnn/while/Switch_3:1
sec_lstm/rnn/while/Switch_4:0
sec_lstm/rnn/while/Switch_4:1
sec_lstm/rnn/while/Switch_5:0
sec_lstm/rnn/while/Switch_5:1
sec_lstm/rnn/while/Switch_6:0
sec_lstm/rnn/while/Switch_6:1
sec_lstm/rnn/while/Switch_7:0
sec_lstm/rnn/while/Switch_7:1
sec_lstm/rnn/while/Switch_8:0
sec_lstm/rnn/while/Switch_8:1
,sec_lstm/rnn/while/TensorArrayReadV3/Enter:0
.sec_lstm/rnn/while/TensorArrayReadV3/Enter_1:0
&sec_lstm/rnn/while/TensorArrayReadV3:0
>sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
8sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
sec_lstm/rnn/while/add/y:0
sec_lstm/rnn/while/add:0
sec_lstm/rnn/while/add_1/y:0
sec_lstm/rnn/while/add_1:0
^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_1:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd_2:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_1:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Const_2:0
]sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul:0
Ysec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1:0
Ysec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2:0
Usec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_1:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_2:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_3:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_4:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Relu_5:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_1:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_2:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_3:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_4:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_5:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_6:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_7:0
Zsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/Sigmoid_8:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add/y:0
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2/y:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4/y:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5:0
\sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat/axis:0
Wsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat:0
^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1/axis:0
Ysec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1:0
^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2/axis:0
Ysec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2:0
Tsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8:0
`sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split/split_dim:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:0
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:1
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:2
Vsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split:3
bsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1/split_dim:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:1
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:2
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_1:3
bsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2/split_dim:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:0
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:1
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:2
Xsec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/split_2:3â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0ň
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/f_acc:0wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_2_grad/MatMul_1/Enter:0;
sec_lstm/rnn/Minimum:0!sec_lstm/rnn/while/Less_1/Enter:0Ť
Isec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/bias/read:0^sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/BiasAdd/Enter:0â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_grad/BroadcastGradientArgs/Enter:0ň
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc_1:0wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1:0î
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc_1:0ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter_1:0\
sec_lstm/rnn/TensorArray:0>sec_lstm/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Ź
Ksec_lstm/rnn/multi_rnn_cell/cell_0/layer_norm_basic_lstm_cell/kernel/read:0]sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul/Enter:0ć
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/Mul_1/Enter:0â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul/Enter:0L
sec_lstm/rnn/TensorArray_1:0,sec_lstm/rnn/while/TensorArrayReadV3/Enter:0A
sec_lstm/rnn/strided_slice_1:0sec_lstm/rnn/while/Less/Enter:0ć
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/Mul_1/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1:0ć
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul_1/Enter:0â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter:0Â
_gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0_gradients/sec_lstm/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0ň
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/f_acc:0wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_1_grad/MatMul_1/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_7_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/BroadcastGradientArgs/Enter_1:0ć
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul_1/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_5_grad/BroadcastGradientArgs/Enter:0â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter:0î
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/BroadcastGradientArgs/Enter:0î
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc:0ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter:0ň
wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/f_acc_1:0wgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_1_grad/ShapeN/Enter_1:0â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/BroadcastGradientArgs/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_5_grad/BroadcastGradientArgs/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_4_grad/BroadcastGradientArgs/Enter:0ć
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_8_grad/Mul_1/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/f_acc_1:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/BroadcastGradientArgs/Enter_1:0â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul_1/Enter:0â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_1_grad/Mul/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_3_grad/BroadcastGradientArgs/Enter:0{
Isec_lstm/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0.sec_lstm/rnn/while/TensorArrayReadV3/Enter_1:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_2_grad/BroadcastGradientArgs/Enter:0ć
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_6_grad/Mul_1/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/add_1_grad/BroadcastGradientArgs/Enter:0â
ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/f_acc:0ogradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_3_grad/Mul/Enter:0ę
sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/f_acc:0sgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_grad/ShapeN/Enter:0ć
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_4_grad/Mul_1/Enter:0Ţ
mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/f_acc:0mgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/Mul/Enter:0î
ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/f_acc:0ugradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/concat_2_grad/ShapeN/Enter:0
gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/f_acc:0gradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_grad/BroadcastGradientArgs/Enter:0ć
qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/f_acc:0qgradients/sec_lstm/rnn/while/rnn/multi_rnn_cell/cell_0/cell_0/layer_norm_basic_lstm_cell/mul_2_grad/Mul_1/Enter:0Rsec_lstm/rnn/while/Enter:0Rsec_lstm/rnn/while/Enter_1:0Rsec_lstm/rnn/while/Enter_2:0Rsec_lstm/rnn/while/Enter_3:0Rsec_lstm/rnn/while/Enter_4:0Rsec_lstm/rnn/while/Enter_5:0Rsec_lstm/rnn/while/Enter_6:0Rsec_lstm/rnn/while/Enter_7:0Rsec_lstm/rnn/while/Enter_8:0Rgradients/f_count_1:0Zsec_lstm/rnn/strided_slice_1:0*Ć
predict_dataľ
8
input_keep_prob%
self_variable/Placeholder_3:0
0
is_training!
self_variable/Placeholder:0
 
?
fea8
self_variable/Placeholder_1:0˙˙˙˙˙˙˙˙˙[
9
output_keep_prob%
self_variable/Placeholder_4:0/
pred'
sec_lstm/add_1:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict