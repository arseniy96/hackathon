﻿using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

	public GameObject panel;
	public GameObject Canvas;
	public GameObject MainCamera;
	
	private int operation;
	// Use this for initialization
	void Start () {
	 operation = 0;
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
	}
}

