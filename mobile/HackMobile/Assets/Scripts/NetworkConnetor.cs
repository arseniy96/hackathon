using UnityEngine;
using System.Collections;

public class NetworkConnetor : MonoBehaviour {


	// Use this for initialization
	void Start () {
		StartCoroutine(GetTasksList ());
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public IEnumerator GetTasksList(){
		WWW request = new WWW ("http://spoiler-motivator.herokuapp.com/api/tasks");
		yield return request;
		if (request.error == null) {
			Debug.Log (request.data);
		} else {
			Debug.Log (request.error);
		}
	}

}
