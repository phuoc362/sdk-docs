Floworder Resource
==========================================================================

Resource URL: ``http://mytorrentserver/rundb/api/v1/floworder/``


Schema URL: ``http://mytorrentserver/rundb/api/v1/floworder/schema/``


.. include:: ../manual_api_ref_docs/floworder.rst

Fields table
------------

================ ====================================== ======= ======== ======== ===== ====== ======= 
field            help text                              default nullable readonly blank unique type    
================ ====================================== ======= ======== ======== ===== ====== ======= 
**description**  Unicode string data. Ex: "Hello World"         false    false    true  false  string  
---------------- -------------------------------------- ------- -------- -------- ----- ------ ------- 
**resource_uri** Unicode string data. Ex: "Hello World" n/a     false    true     false false  string  
---------------- -------------------------------------- ------- -------- -------- ----- ------ ------- 
**flowOrder**    Unicode string data. Ex: "Hello World"         false    false    true  false  string  
---------------- -------------------------------------- ------- -------- -------- ----- ------ ------- 
**isActive**     Boolean data. Ex: True                 true    false    false    true  false  boolean 
---------------- -------------------------------------- ------- -------- -------- ----- ------ ------- 
**isSystem**     Boolean data. Ex: True                 false   false    false    true  false  boolean 
---------------- -------------------------------------- ------- -------- -------- ----- ------ ------- 
**id**           Integer data. Ex: 2673                         false    false    true  true   integer 
---------------- -------------------------------------- ------- -------- -------- ----- ------ ------- 
**isDefault**    Boolean data. Ex: True                 false   false    false    true  false  boolean 
---------------- -------------------------------------- ------- -------- -------- ----- ------ ------- 
**name**         Unicode string data. Ex: "Hello World" n/a     false    false    false true   string  
================ ====================================== ======= ======== ======== ===== ====== ======= 

Example request
---------------

Request URL: ``http://mytorrentserver/rundb/api/v1/floworder/?format=json&limit=1``


Python example
^^^^^^^^^^^^^^

.. code-block:: python

	
	import requests
	
	ts_api_request = requests.get("http://mytorrentserver/rundb/api/v1/floworder/", params={"format": "json", "limit": 1})
	ts_api_response = ts_api_request.json()
	
	floworders = ts_api_response["objects"]
	
	for floworder in floworders:
	    print floworder
	
Torrent Server response
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: javascript

	{
	    "meta": {
	        "previous": null, 
	        "total_count": 6, 
	        "offset": 0, 
	        "limit": 1, 
	        "next": "/rundb/api/v1/floworder/?offset=1&limit=1&format=json"
	    }, 
	    "objects": [
	        {
	            "description": "Ion default samba flow order", 
	            "resource_uri": "/rundb/api/v1/floworder/1/", 
	            "flowOrder": "TACGTACGTCTGAGCATCGATCGATGTACAGC", 
	            "isActive": true, 
	            "isSystem": true, 
	            "id": 1, 
	            "isDefault": true, 
	            "name": "Ion samba"
	        }
	    ]
	}

Allowed HTTP methods
--------------------

- get
- post
- put
- delete
- patch

