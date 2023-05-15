/*
Create copies of a ball object to fail on thee game scene
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class trhowballs : MonoBehaviour
{
    public float delay;
    public GameObject ball;
    public float limit;
    
    // Start is called before the first frame update
    void Start()
    {
        InvokeRepeating("Createball", delay, delay);   
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void Createball()
    {
        Vector3 newPos= new Vector3(Random.Range(-limit, limit),
                                                6.5f, 0);
        Instantiate(ball, newPos, Quaternion.identity);
    }
}
