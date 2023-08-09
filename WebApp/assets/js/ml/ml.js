const fastapi = (operation, url, params, success_callback, failure_callback) => {
    let method = operation
    let content_type = 'application/json'
    let body = JSON.stringify(params)
    let _url = 'http://43.201.254.244:8000/'+url
    if(method === 'post') {
        _url += "?" + new URLSearchParams(params)
    }
    let options = {
        method: method,
        headers: {
            "Content-Type": content_type
        }
    }
    if (method !== 'post') {
        options['body'] = body
    }
    fetch(_url, options)
        .then(response => {
            response.json()
                .then(json => {
                    if(response.status >= 200 && response.status < 300) {  // 200 ~ 299
                        if(success_callback) {
                            success_callback(json)
                        }
                    }else {
                        if (failure_callback) {
                            failure_callback(json)
                        }else {
                            alert(JSON.stringify(json))
                        }
                    }
                })
                .catch(error => {
                    alert(JSON.stringify(error))
                })
        })
	}
	
	export default fastapi
	
	
	
let follow_dict = [];

		
function get_recommend_list() {
	const ul = document.getElementById('userInfo');
	const list = document.createDocumentFragment();
	const images = [
	    "0.png", "1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png", "9.png"
	];
    fetch("http://43.201.254.244:8000/api/recommend/recommend").then(response => {
    	response.json().then(data => {
    		follow_dict = data;
    		console.log(follow_dict);
    		follow_dict.map(function(follow){
    			const li = document.createElement('li');
    			const tweeterId = document.createElement('span');
    			const tweeterNick = document.createElement('h2');
    			const followBtn = document.createElement('div');
    			
    			var chosenImage = images[Math.floor(Math.random() * images.length)];
    			console.log(chosenImage)
    			const bgImage = document.createElement('img');
    			const link_addr = '${pageContext.request.contextPath}/assets/images/profile/rec_follower_prfs/' + chosenImage;
    			console.log(link_addr);
    			bgImage.src = link_addr;
    			console.log(bgImage.src)

    			tweeterId.textContent = "@" + follow.tweeterIdList;
    			console.log(tweeterId);
    			tweeterNick.textContent = follow.tweeterNickList;
    			console.log(tweeterNick);
    			followBtn.textContent = "팔로우";
				
    			li.appendChild(bgImage); 	 
	  			li.appendChild(followBtn);
    			li.appendChild(tweeterNick);
    			li.appendChild(tweeterId);
    			console.log(li);
    			

    			list.appendChild(li);
    			console.log("list: " + list)
    			
    	    	ul.appendChild(list);
    		    console.log(ul);
    			
    		});


    	})

    })
   
};

get_recommend_list();