<html>
  <head>
    <meta name="layout" content="main" />
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'range.css')}" type="text/css">
    <title>Weighted Simulated Annealing Advanced Setting</title>         
  </head>
  <body>
  		<g:render template="/navigates/navigates_CleanData" />
  	
    	<h3>Weighted Simulated Annealing Advanced Setting</h3>
    	<br>
    	
		<g:uploadForm controller="dataCleaning" action="weightedSASetting" method="POST">
		  <g:render template="/dataCleaning/searchConfigSetting" />
		        
		  <div class="panel panel-success">
				<div class="panel-heading">Privacy & Cleaning Utility Objective Configuration:</div>
				<div class="panel-body">
					<div class="row">
      					<div class="col-xs-6">
					        <label>Alpha of Privacy:</label> 
					        <div class="range range-success">
					        	<input id="alphaPvt" type="range" name="alphaPvt" min="0.0" max="1.0" value="${config["alphaPvt"] }" step="0.001" onchange="alphaPvtText.value=value" />
					        	<output id="alphaPvtText">${config["alphaPvt"] }</output>
					        </div>
				        </div>
			        
			        	<div class="col-xs-6">
					        <label>Beta Ind:</label> 
					        <div class="range range-success">
					        	<input id="betaInd" type="range" name="betaInd" min="0.0" max="1.0" value="${config["betaInd"] }" step="0.001" onchange="betaIndText.value=value" />
					        	<output id="betaIndText">${config["betaInd"] }</output>
					        </div>
				        </div>
			        </div>
			        
			        <div class="row">
      					<div class="col-xs-6">
					        <label>Gamma Size:</label> 
					        <div class="range range-success">
					        	<input id="gamaSize" type="range" name="gamaSize" min="0.0" max="1.0" value="${config["gamaSize"] }" step="0.001" onchange="gamaSizeText.value=value" />
					        	<output id="gamaSizeText">${config["gamaSize"] }</output>
					        </div>
				        </div>
			        </div>
		        </div>
	        </div>
	        
	        <input class="btn btn-success" name="func" type="submit" value="Save"/>
	        <input class="btn btn-primary" name="func" type="submit" value="Reset to default"/>
	    </g:uploadForm>
	    <br>
	    <g:if test="${flash.message}">
	  		<p>${flash.message}</p>
	  	</g:if>
	
  </body>
</html>