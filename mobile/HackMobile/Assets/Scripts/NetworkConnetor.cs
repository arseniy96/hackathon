using UnityEngine;
using System.Collections;

public class NetworkConnetor : MonoBehaviour {


	// Use this for initialization
	void Start () {
		StartCoroutine(PostTask());
		System.DateTime epochStart = new System.DateTime(1970, 1, 1, 0, 0, 0, System.DateTimeKind.Utc);
		int cur_time = (int)(System.DateTime.UtcNow - epochStart).TotalSeconds;

		NotificationManager.Send (TimeSpan.FromSeconds (5), "You Failed", "John Snow will die",new Color(0, 0.6f, 1), NotificationIcon.Heart);
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


	public IEnumerator GetSerialsList(){
		WWW request = new WWW ("http://spoiler-motivator.herokuapp.com/api/serials");
		yield return request;
		if (request.error == null) {
			Debug.Log ("start");
			Debug.Log (request.data);
			Debug.Log ("end");
		} else {
			Debug.Log (request.error);
		}
	}
		

	public IEnumerator PostTask(string name,string desc,int dt){


		WWWForm form = new WWWForm ();
		form.AddField ("name",name);
		form.AddField ("description",desc);
		form.AddField ("date",dt);

		WWW request = new WWW ("http://spoiler-motivator.herokuapp.com/api/tasks",form);

		yield return request;
		if (request.error == null) {
			Debug.Log (request.data);
		} else {
			Debug.Log (request.error);
		}
	}

	public IEnumerator PostSerials(){
		
	}
}
