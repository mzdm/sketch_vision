const testDataLabels2 = '''
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
                     "class":"purple color",
                     "score":0.671
                  },
                  {
                     "class":"indigo color",
                     "score":0.949
                  },
                  {
                     "class":"clothing",
                     "score":0.8
                  },
                  {
                     "class":"garment",
                     "score":0.501
                  },
                  {
                     "class":"joint",
                     "score":0.6
                  },
                  {
                     "class":"scarf",
                     "score":0.5
                  },
                  {
                     "class":"person",
                     "score":0.847
                  },
                  {
                     "class":"feather boa scarf",
                     "score":0.5,
                     "type_hierarchy":"/garment/scarf/feather boa scarf"
                  },
                  {
                     "class":"welder",
                     "score":0.847,
                     "type_hierarchy":"/person/welder"
                  },
                  {
                     "class":"weld",
                     "score":0.6,
                     "type_hierarchy":"/joint/weld"
                  }
               ]
            }
         ]
      }
   ]
}
''';

const testDataLabels3 = '''
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
                     "class":"light brown color",
                     "score":1.0
                  },
                  {
                     "class":"domestic animal",
                     "score":0.873
                  },
                  {
                     "class":"animal",
                     "score":0.931
                  },
                  {
                     "class":"dog",
                     "score":0.871
                  },
                  {
                     "class":"retriever dog",
                     "score":0.86,
                     "type_hierarchy":"/animal/domestic animal/dog/retriever dog"
                  },
                  {
                     "class":"golden retriever dog",
                     "score":0.552,
                     "type_hierarchy":"/animal/domestic animal/dog/retriever dog/golden retriever dog"
                  },
                  {
                     "class":"organism",
                     "score":0.5,
                     "type_hierarchy":"/animal/organism"
                  }
               ]
            }
         ]
      }
   ]
}
''';
