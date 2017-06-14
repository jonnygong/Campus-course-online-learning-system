using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Information 的摘要说明
/// </summary>
public class Information
{
    public int teaid;
    public string teanum;
    public string name;
    public string email;
    public string pwd;
    public string sex;
    public int age;
    public string degree;
    public string edu;
	public Information()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public Information(int teaid, string teanum, string name, string email, string pwd, string sex, int age, string degree, string edu)
    {
        this.teaid = teaid;
        this.teanum = teanum;
        this.name = name;
        this.email = email;
        this.pwd = pwd;
        this.sex = sex;
        this.age = age;
        this.degree = degree;
        this.edu = edu;
    }
    public int getTeaId()
    {
        return this.teaid;
    }
    public string getTeaNum()
    {
        return this.teanum;
    }
    public string getName()
    {
        return this.name;
    }
    public string getEmail()
    {
        return this.email;
    }
    public string getPwd()
    {
        return this.pwd;
    }
    public string getSex()
    {
        return this.sex;
    }

    public int getAge()
    {
        return this.age;
    }
    public string getDegree()
    {
        return this.degree;
    }
    public string getEdu()
    {
        return this.edu;
    }
}