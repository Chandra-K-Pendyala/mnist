ê¢
Â
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
A
Equal
x"T
y"T
z
"
Ttype:
2	

4
Fill
dims

value"T
output"T"	
Ttype
¢
	HashTable
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
`
InitializeTable
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
+
Log
x"T
y"T"
Ttype:	
2
u
LookupTableFind
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ï
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
8
Softmax
logits"T
softmax"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
c
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2		
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.0.02v1.0.0-rc2-16-g07bb8ea-dirtyì
M

tf_examplePlaceholder*
_output_shapes
:*
shape: *
dtype0
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
_output_shapes
: *
dtype0
h
&ParseExample/ParseExample/dense_keys_0Const*
value	B Bx*
dtype0*
_output_shapes
: 

ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0ParseExample/Const*
Nsparse *
sparse_types
 *
dense_shapes	
:*
Tdense
2*
Ndense*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
xIdentityParseExample/ParseExample*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]
PlaceholderPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shape: *
dtype0
\
zerosConst*
valueB	
*    *
dtype0*
_output_shapes
:	

~
Variable
VariableV2*
shape:	
*
shared_name *
dtype0*
_output_shapes
:	
*
	container 

Variable/AssignAssignVariablezeros*
_class
loc:@Variable*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
j
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes
:	

T
zeros_1Const*
valueB
*    *
_output_shapes
:
*
dtype0
v

Variable_1
VariableV2*
_output_shapes
:
*
	container *
shape:
*
dtype0*
shared_name 

Variable_1/AssignAssign
Variable_1zeros_1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:

k
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
_output_shapes
:
*
T0
2
initNoOp^Variable/Assign^Variable_1/Assign
z
MatMulMatMulxVariable/read*
transpose_b( *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
transpose_a( *
T0
U
addAddMatMulVariable_1/read*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
C
ySoftmaxadd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

?
LogLogy*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

N
mulMulPlaceholderLog*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
V
ConstConst*
valueB"       *
_output_shapes
:*
dtype0
^
corss_entropySummulConst*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
:
NegNegcorss_entropy*
_output_shapes
: *
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
T
gradients/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
N
gradients/Neg_grad/NegNeggradients/Fill*
T0*
_output_shapes
: 
{
*gradients/corss_entropy_grad/Reshape/shapeConst*
valueB"      *
_output_shapes
:*
dtype0
ª
$gradients/corss_entropy_grad/ReshapeReshapegradients/Neg_grad/Neg*gradients/corss_entropy_grad/Reshape/shape*
Tshape0*
_output_shapes

:*
T0
e
"gradients/corss_entropy_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
·
!gradients/corss_entropy_grad/TileTile$gradients/corss_entropy_grad/Reshape"gradients/corss_entropy_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

c
gradients/mul_grad/ShapeShapePlaceholder*
out_type0*
_output_shapes
:*
T0
]
gradients/mul_grad/Shape_1ShapeLog*
out_type0*
_output_shapes
:*
T0
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0
w
gradients/mul_grad/mulMul!gradients/corss_entropy_grad/TileLog*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


gradients/mul_grad/mul_1MulPlaceholder!gradients/corss_entropy_grad/Tile*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

¥
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ú
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

à
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0

gradients/Log_grad/Reciprocal
Reciprocaly.^gradients/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

h
gradients/y_grad/mulMulgradients/Log_grad/muly*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
p
&gradients/y_grad/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
¤
gradients/y_grad/SumSumgradients/y_grad/mul&gradients/y_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
gradients/y_grad/Reshape/shapeConst*
valueB"ÿÿÿÿ   *
dtype0*
_output_shapes
:

gradients/y_grad/ReshapeReshapegradients/y_grad/Sumgradients/y_grad/Reshape/shape*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

gradients/y_grad/subSubgradients/Log_grad/mulgradients/y_grad/Reshape*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

h
gradients/y_grad/mul_1Mulgradients/y_grad/suby*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
^
gradients/add_grad/ShapeShapeMatMul*
out_type0*
_output_shapes
:*
T0
d
gradients/add_grad/Shape_1Const*
valueB:
*
_output_shapes
:*
dtype0
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

gradients/add_grad/SumSumgradients/y_grad/mul_1(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

£
gradients/add_grad/Sum_1Sumgradients/y_grad/mul_1*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ú
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:

»
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*
transpose_b(*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_a( *
T0
¨
gradients/MatMul_grad/MatMul_1MatMulx+gradients/add_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	
*
transpose_a(*
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
å
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes
:	

]
train_step/learning_rateConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
÷
/train_step/update_Variable/ApplyGradientDescentApplyGradientDescentVariabletrain_step/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Variable*
_output_shapes
:	
*
T0*
use_locking( 
õ
1train_step/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1train_step/learning_rate-gradients/add_grad/tuple/control_dependency_1*
_class
loc:@Variable_1*
_output_shapes
:
*
T0*
use_locking( 
x

train_stepNoOp0^train_step/update_Variable/ApplyGradientDescent2^train_step/update_Variable_1/ApplyGradientDescent
J
TopKV2/kConst*
value	B :
*
dtype0*
_output_shapes
: 
p
TopKV2TopKV2yTopKV2/k*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
T0*
sorted(
Z
ToInt64CastTopKV2:1*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

DstT0	
l
Const_1Const*1
value(B&
B0B1B2B3B4B5B6B7B8B9*
_output_shapes
:
*
dtype0
V
index_to_string/SizeConst*
value	B :
*
_output_shapes
: *
dtype0
]
index_to_string/range/startConst*
value	B : *
_output_shapes
: *
dtype0
]
index_to_string/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0

index_to_string/rangeRangeindex_to_string/range/startindex_to_string/Sizeindex_to_string/range/delta*

Tidx0*
_output_shapes
:

g
index_to_string/CastCastindex_to_string/range*

SrcT0*
_output_shapes
:
*

DstT0	

index_to_string	HashTable*
use_node_name_sharing( *
_output_shapes
:*
value_dtype0*
shared_name *
	container *
	key_dtype0	
Y
index_to_string/ConstConst*
valueB	 BUNK*
_output_shapes
: *
dtype0

index_to_string/table_initInitializeTableindex_to_stringindex_to_string/CastConst_1*

Tkey0	*

Tval0*"
_class
loc:@index_to_string
¾
index_to_string_LookupLookupTableFindindex_to_stringToInt64index_to_string/Const*

Tout0*"
_class
loc:@index_to_string*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*	
Tin0	
R
ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
_
ArgMaxArgMaxyArgMax/dimension*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*

Tidx0
T
ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
m
ArgMax_1ArgMaxPlaceholderArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0	
P
CastCastEqual*

SrcT0
*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

DstT0
Q
Const_2Const*
valueB: *
_output_shapes
:*
dtype0
Y
MeanMeanCastConst_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
u
save/SaveV2/tensor_namesConst*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
valueBB B *
_output_shapes
:*
dtype0

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
l
save/RestoreV2/tensor_namesConst*
valueBBVariable*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignVariablesave/RestoreV2*
_class
loc:@Variable*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
p
save/RestoreV2_1/tensor_namesConst*
valueBB
Variable_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
¢
save/Assign_1Assign
Variable_1save/RestoreV2_1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:

6
save/restore_allNoOp^save/Assign^save/Assign_1
4
init_all_tablesNoOp^index_to_string/table_init
(
legacy_init_opNoOp^init_all_tables
R
save/Const_1Const*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_5b44f47379f6466eb0d663d656ae5b39/part*
dtype0*
_output_shapes
: 
w
save/StringJoin
StringJoinsave/Const_1save/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
w
save/SaveV2_1/tensor_namesConst*)
value BBVariableB
Variable_1*
_output_shapes
:*
dtype0
i
save/SaveV2_1/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save/SaveV2_1SaveV2save/ShardedFilenamesave/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicesVariable
Variable_1*
dtypes
2

save/control_dependency_1Identitysave/ShardedFilename^save/SaveV2_1*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency_1*

axis *
_output_shapes
:*
T0*
N

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixessave/Const_1*
delete_old_dirs(
~
save/IdentityIdentitysave/Const_1^save/control_dependency_1^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
n
save/RestoreV2_2/tensor_namesConst*
valueBBVariable*
_output_shapes
:*
dtype0
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_2	RestoreV2save/Const_1save/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
£
save/Assign_2AssignVariablesave/RestoreV2_2*
_class
loc:@Variable*
_output_shapes
:	
*
T0*
validate_shape(*
use_locking(
p
save/RestoreV2_3/tensor_namesConst*
valueBB
Variable_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_3	RestoreV2save/Const_1save/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
¢
save/Assign_3Assign
Variable_1save/RestoreV2_3*
_class
loc:@Variable_1*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
:
save/restore_shardNoOp^save/Assign_2^save/Assign_3
/
save/restore_all_1NoOp^save/restore_shard"@
save/Const_1:0save/Identity:0save/restore_all_1 (5 @F8"3
table_initializer

index_to_string/table_init"
values


TopKV2:0"2
prediction_classes

index_to_string_Lookup:0"u
	variableshf
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"
trainable_variableshf
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"
train_op


train_step"$
legacy_init_op

legacy_init_op*¸
serving_default¤

inputs
tf_example:0:
classes/
index_to_string_Lookup:0ÿÿÿÿÿÿÿÿÿ
)
scores
TopKV2:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/classify*{
predict_imagesi
%
images
x:0ÿÿÿÿÿÿÿÿÿ$
scores
y:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict