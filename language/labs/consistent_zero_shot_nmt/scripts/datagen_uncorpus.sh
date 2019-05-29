# coding=utf-8
# Copyright 2018 The Google AI Language Team Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#!/bin/bash

PROBLEM=translate_uncorpus_exp1_lm
DATA_DIR=$1
TMP_DIR=$2
UNCORPUS_ORIG_DATA_EXP1=$3
UNCORPUS_ORIG_DATA_EXP1_LM=$4
UNCORPUS_ORIG_DATA_EXP2=$5
UNCORPUS_ORIG_DATA_EXP2_LM=$6

mkdir -p $DATA_DIR $TMP_DIR

python -m language.labs.consistent_zero_shot_nmt.bin.t2t_datagen \
  --data_dir=$DATA_DIR \
  --uncorpus_orig_data_exp1=$UNCORPUS_ORIG_DATA_EXP1 \
  --uncorpus_orig_data_exp1_lm=$UNCORPUS_ORIG_DATA_EXP1_LM \
  --uncorpus_orig_data_exp2=$UNCORPUS_ORIG_DATA_EXP2 \
  --uncorpus_orig_data_exp2_lm=$UNCORPUS_ORIG_DATA_EXP2_LM \
  --problem=$PROBLEM \
  --tmp_dir=$TMP_DIR \
  --alsologtostderr
