const testData = '''
{
   "cfimages":"ClassifiedImages",
   "custom_classes":0,
   "images_processed":1,
   "images":[
      {
         "image":"images_file",
         "classifiers":[
            {
               "name":"default",
               "classifier_id":"default",
               "classes":[
                  {
                     "class":"analog clock",
                     "score":0.845,
                     "type_hierarchy":"/measuring instrument/timepiece/clock/analog clock"
                  },
                  {
                     "class":"clock",
                     "score":0.922
                  },
                  {
                     "class":"timepiece",
                     "score":0.925
                  },
                  {
                     "class":"measuring instrument",
                     "score":0.925
                  },
                  {
                     "class":"wall clock",
                     "score":0.5,
                     "type_hierarchy":"/measuring instrument/timepiece/clock/wall clock"
                  },
                  {
                     "class":"instrument",
                     "score":0.781
                  },
                  {
                     "class":"indicator",
                     "score":0.801
                  },
                  {
                     "class":"ash grey color",
                     "score":0.69
                  },
                  {
                     "class":"pink color",
                     "score":0.397
                  }
               ]
            }
         ]
      }
   ]
}
''';

const testData2 = '''
{
   "cfimages":"ClassifiedImages",
   "custom_classes":0,
   "images_processed":1,
   "images":[
      {
         "image":"images_file",
         "classifiers":[
            {
               "name":"default",
               "classifier_id":"default",
               "classes":[
                  {
                     "class":"feather boa scarf",
                     "score":0.845,
                     "type_hierarchy":"/garment/scarf/feather boa scarf"
                  },
                  {
                     "class":"welder",
                     "score":0.922,
                     "type_hierarchy":"/person/welder"
                  },
                  {
                     "class":"timepiece",
                     "score":0.925
                  },
                  {
                     "class":"measuring instrument",
                     "score":0.925
                  },
                  {
                     "class":"weld",
                     "score":0.5,
                     "type_hierarchy":"/joint/weld"
                  },
                  {
                     "class":"instrument",
                     "score":0.781
                  },
                  {
                     "class":"indicator",
                     "score":0.801
                  },
                  {
                     "class":"ash grey color",
                     "score":0.69
                  },
                  {
                     "class":"pink color",
                     "score":0.397
                  }
               ]
            }
         ]
      }
   ]
}
''';
