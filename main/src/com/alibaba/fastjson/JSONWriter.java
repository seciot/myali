package com.alibaba.fastjson;

import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.SerializeWriter;
import java.io.Writer;

public class JSONWriter
{
  private JSONWriter.Context context;
  private final Writer out;
  private JSONSerializer serializer;
  private SerializeWriter writer;

  public JSONWriter(Writer paramWriter)
  {
    this.out = paramWriter;
    this.writer = new SerializeWriter();
    this.serializer = new JSONSerializer(this.writer);
  }

  public void close()
  {
    if (this.writer.size() != 0)
      flush();
  }

  public void flush()
  {
    this.writer.writeTo(this.out);
    this.writer = new SerializeWriter();
    this.serializer = new JSONSerializer(this.writer);
  }

  public void writeEndArray()
  {
    this.writer.write(']');
    this.context = this.context.getParent();
    if (this.context != null)
    {
      if (this.context.getState() == JSONWriter.State.PropertyKey)
        this.context.setState(JSONWriter.State.PropertyValue);
    }
    else
      return;
    if (this.context.getState() == JSONWriter.State.BeginArray)
    {
      this.context.setState(JSONWriter.State.ArrayValue);
      return;
    }
    this.context.getState();
  }

  public void writeEndObject()
  {
    this.writer.write('}');
    this.context = this.context.getParent();
    if (this.context != null)
    {
      if (this.context.getState() == JSONWriter.State.PropertyKey)
        this.context.setState(JSONWriter.State.PropertyValue);
    }
    else
      return;
    if (this.context.getState() == JSONWriter.State.BeginArray)
    {
      this.context.setState(JSONWriter.State.ArrayValue);
      return;
    }
    this.context.getState();
  }

  public void writeKey(String paramString)
  {
    if (this.context.getState() == JSONWriter.State.PropertyValue)
      this.writer.write(',');
    this.writer.writeString(paramString);
    this.context.setState(JSONWriter.State.PropertyKey);
  }

  public void writeStartArray()
  {
    if (this.context == null)
    {
      this.context = new JSONWriter.Context(null, JSONWriter.State.BeginArray);
      this.writer.write('[');
      return;
    }
    if (this.context.getState() == JSONWriter.State.PropertyKey)
      this.writer.write(':');
    label100: 
    do
      while (true)
      {
        this.context = new JSONWriter.Context(this.context, JSONWriter.State.BeginArray);
        break;
        if (this.context.getState() != JSONWriter.State.ArrayValue)
          break label100;
        this.writer.write(',');
      }
    while (this.context.getState() == JSONWriter.State.BeginArray);
    throw new JSONException("illegal state : " + this.context.getState());
  }

  public void writeStartObject()
  {
    if (this.context == null)
    {
      this.context = new JSONWriter.Context(null, JSONWriter.State.BeginObject);
      this.writer.write('{');
      return;
    }
    if (this.context.getState() == JSONWriter.State.PropertyKey)
      this.writer.write(':');
    label100: 
    do
      while (true)
      {
        this.context = new JSONWriter.Context(this.context, JSONWriter.State.BeginObject);
        break;
        if (this.context.getState() != JSONWriter.State.ArrayValue)
          break label100;
        this.writer.write(',');
      }
    while ((this.context.getState() == JSONWriter.State.BeginObject) || (this.context.getState() == JSONWriter.State.BeginArray));
    throw new JSONException("illegal state : " + this.context.getState());
  }

  public void writeValue(Object paramObject)
  {
    if (this.context.getState() == JSONWriter.State.PropertyKey)
      this.writer.write(':');
    this.serializer.write(paramObject);
    this.context.setState(JSONWriter.State.PropertyValue);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.JSONWriter
 * JD-Core Version:    0.6.2
 */