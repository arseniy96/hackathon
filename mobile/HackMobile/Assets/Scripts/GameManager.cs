using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections;

public class GameManager : MonoBehaviour {

	public GameObject panel;
	public GameObject Canvas;
	public GameObject MainCamera;
	public Sprite tasks;
	public Sprite newtask;
	public Button okButton;

	public Text name;
	public Text date;
	public Text description;


	string curui;
	private int operation;
	private NetworkConnetor netcon;
	// Use this for initialization
	void Start () {
	 operation = 0;
		curui = "tasks";
		netcon = GetComponent<NetworkConnetor> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	public void CreateNewObject() {
		Debug.Log("new obhewct");
		
		operation++;
		int y = 560 - operation * 300;

		Vector3 pos = new Vector3 (540, y, 0);	
		
		GameObject newPanel = Instantiate(panel, pos, Quaternion.identity) as GameObject;
		
		newPanel.transform.SetParent(Canvas.transform, false);
		
		

	}
	
	public void Camera_rotation() {
		MainCamera.transform.position = new Vector3(5.56f, 0.0f, -10.0f);
		if (curui == "tasks") {
			curui = "newtask";
			okButton.image.overrideSprite = newtask;
		} else {
			curui="tasks";
			okButton.image.overrideSprite = tasks;
			MainCamera.transform.position = new Vector3(0.0f, 0.0f, -10.0f);
			SendNewTask ();
		}
	}

	public void SendNewTask(){
		string dateText = date.text;
		string[] dateAndTime = dateText.Split (new string[]{" "},StringSplitOptions.None);
		string time = dateAndTime [0];
		string dateStr = dateAndTime [1];
		string[] timeArr = time.Split (new string[]{"."},StringSplitOptions.None);
		string[] dateArr = dateStr.Split (new string[]{"."},StringSplitOptions.None);

		int dateTimeSeconds =ConvertToUnixTimestamp( new System.DateTime (Int32.Parse (dateArr [2]), Int32.Parse (dateArr [1]), Int32.Parse (dateArr [0]),Int32.Parse (timeArr [0]), Int32.Parse (timeArr [1]), 0));
		

		StartCoroutine (netcon.PostTask(name.text,description.text,dateTimeSeconds));
	}

	public static DateTime ConvertFromUnixTimestamp(double timestamp)
	{
		DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
		return origin.AddSeconds(timestamp);
	}

	public static int ConvertToUnixTimestamp(DateTime date)
	{
		DateTime origin = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
		TimeSpan diff = date.ToUniversalTime() - origin;
		return (int)diff.TotalSeconds;
	}
}

