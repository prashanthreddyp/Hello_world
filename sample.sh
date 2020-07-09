 on :
    push :
      branch : 
	    - dev
	  path :
        - packages/mosaic-components	  
	   
 jobs :
   build:
     name : mosaic components   
     run-on : ubuntu-leteat
     steps :
       - name : checking out...
       - uses : actions/checkout@v2	
       	 run :
           sh '''jq \'del(.devDependencies.cypress)\' package.json > _.json && mv _.json package.json 
           npm inatall
           npm run build
           npm run storybook:build'''
