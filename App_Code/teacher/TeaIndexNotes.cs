using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// TeaIndexNotes 的摘要说明
/// </summary>
public class TeaIndexNotes
{
    public int id;
    public int number;
    public string name;
    public int notesid;
    public int notesuserid;
    public string notestitle;
    public string notescontent;
    public string teaimg;
	public TeaIndexNotes()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public TeaIndexNotes(int id, int number, string name, int notesid, int notesuserid, string notestitle, string notescontent, string teaimg)
    {
        this.id = id;
        this.number = number;
        this.name = name;
        this.notesid = notesid;
        this.notesuserid = notesuserid;
        this.notestitle = notestitle;
        this.notescontent = notescontent;
        this.teaimg = teaimg;
    }
    public int getId()
    {
        return this.id;
    }
    public int getNumber()
    {
        return this.number;
    }
    public string getName()
    {
        return this.name;
    }
    public int getNotesId()
    {
        return this.notesid;
    }
    public int getNotesUserid()
    {
        return this.notesuserid;
    }
    public string getNotesTitle()
    {
        return this.notestitle;
    }
    public string getNotesContent()
    {
        return this.notescontent;
    }
    public string getTeaimg()
    {
        return this.teaimg;
    }
}