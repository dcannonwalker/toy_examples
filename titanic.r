{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "3d9c7ca1",
   "metadata": {
    "_cell_guid": "4e8ed967-d45c-4329-b4e7-43195e0bcda9",
    "_uuid": "d3ec1d61-10a0-403f-8c9a-068e96a918ab",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-11-18T16:49:54.644766Z",
     "iopub.status.busy": "2022-11-18T16:49:54.642787Z",
     "iopub.status.idle": "2022-11-18T16:49:55.068272Z",
     "shell.execute_reply": "2022-11-18T16:49:55.066232Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.43379,
     "end_time": "2022-11-18T16:49:55.071902",
     "exception": false,
     "start_time": "2022-11-18T16:49:54.638112",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘dplyr’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    filter, lag\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    intersect, setdiff, setequal, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(dplyr)\n",
    "library(ggplot2)\n",
    "test <- read.csv('../input/titanic/test.csv')\n",
    "train <- read.csv('../input/titanic/train.csv')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "4a503058",
   "metadata": {
    "_cell_guid": "26c5d54d-40ca-4981-b538-5ce637630fc7",
    "_uuid": "c666275a-881b-4a3c-8edc-fb99d0e1d8c7",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2022-11-18T16:49:55.156104Z",
     "iopub.status.busy": "2022-11-18T16:49:55.077814Z",
     "iopub.status.idle": "2022-11-18T16:49:55.186056Z",
     "shell.execute_reply": "2022-11-18T16:49:55.183949Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.114455,
     "end_time": "2022-11-18T16:49:55.188567",
     "exception": false,
     "start_time": "2022-11-18T16:49:55.074112",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t891 obs. of  12 variables:\n",
      " $ PassengerId: int  1 2 3 4 5 6 7 8 9 10 ...\n",
      " $ Survived   : int  0 1 1 1 0 0 0 0 1 1 ...\n",
      " $ Pclass     : int  3 1 3 1 3 3 1 3 3 2 ...\n",
      " $ Name       : chr  \"Braund, Mr. Owen Harris\" \"Cumings, Mrs. John Bradley (Florence Briggs Thayer)\" \"Heikkinen, Miss. Laina\" \"Futrelle, Mrs. Jacques Heath (Lily May Peel)\" ...\n",
      " $ Sex        : chr  \"male\" \"female\" \"female\" \"female\" ...\n",
      " $ Age        : num  22 38 26 35 35 NA 54 2 27 14 ...\n",
      " $ SibSp      : int  1 1 0 1 0 0 0 3 0 1 ...\n",
      " $ Parch      : int  0 0 0 0 0 0 0 1 2 0 ...\n",
      " $ Ticket     : chr  \"A/5 21171\" \"PC 17599\" \"STON/O2. 3101282\" \"113803\" ...\n",
      " $ Fare       : num  7.25 71.28 7.92 53.1 8.05 ...\n",
      " $ Cabin      : chr  \"\" \"C85\" \"\" \"C123\" ...\n",
      " $ Embarked   : chr  \"S\" \"C\" \"S\" \"S\" ...\n"
     ]
    }
   ],
   "source": [
    "str(train)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "4dd24017",
   "metadata": {
    "_cell_guid": "503ef026-995f-454d-afdb-8f14574f3e7d",
    "_uuid": "d5b0dd74-6008-426b-89e0-dfc7a2773c43",
    "collapsed": false,
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.002048,
     "end_time": "2022-11-18T16:49:55.192567",
     "exception": false,
     "start_time": "2022-11-18T16:49:55.190519",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 4.593637,
   "end_time": "2022-11-18T16:49:55.416253",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-11-18T16:49:50.822616",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
