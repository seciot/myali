package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.asm.ASMException;
import com.alibaba.fastjson.asm.ClassWriter;
import com.alibaba.fastjson.asm.FieldVisitor;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.fastjson.asm.MethodVisitor;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.parser.JSONToken;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.SymbolTable;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.DeserializeBeanInfo;
import com.alibaba.fastjson.util.FieldInfo;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;

public class ASMDeserializerFactory
  implements Opcodes
{
  private static final ASMDeserializerFactory instance = new ASMDeserializerFactory();
  private ASMClassLoader classLoader = new ASMClassLoader();
  private final AtomicLong seed = new AtomicLong();

  private void _batchSet(ASMDeserializerFactory.Context paramContext, MethodVisitor paramMethodVisitor)
  {
    int i = paramContext.getFieldInfoList().size();
    int j = 0;
    if (j < i)
    {
      FieldInfo localFieldInfo = (FieldInfo)paramContext.getFieldInfoList().get(j);
      Class localClass = localFieldInfo.getFieldClass();
      java.lang.reflect.Type localType = localFieldInfo.getFieldType();
      if (localClass == Boolean.TYPE)
      {
        paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
        paramMethodVisitor.visitVarInsn(21, paramContext.var(localFieldInfo.getName() + "_asm"));
        _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
      }
      while (true)
      {
        j++;
        break;
        if (localClass == Byte.TYPE)
        {
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(21, paramContext.var(localFieldInfo.getName() + "_asm"));
          _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
        }
        else if (localClass == Short.TYPE)
        {
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(21, paramContext.var(localFieldInfo.getName() + "_asm"));
          _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
        }
        else if (localClass == Integer.TYPE)
        {
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(21, paramContext.var(localFieldInfo.getName() + "_asm"));
          _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
        }
        else if (localClass == Long.TYPE)
        {
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(22, paramContext.var(localFieldInfo.getName() + "_asm", 2));
          if (localFieldInfo.getMethod() != null)
            paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(paramContext.getClazz()), localFieldInfo.getMethod().getName(), "(J)V");
          else
            paramMethodVisitor.visitFieldInsn(181, ASMUtils.getType(localFieldInfo.getDeclaringClass()), localFieldInfo.getField().getName(), ASMUtils.getDesc(localFieldInfo.getFieldClass()));
        }
        else if (localClass == Float.TYPE)
        {
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(23, paramContext.var(localFieldInfo.getName() + "_asm"));
          _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
        }
        else if (localClass == Double.TYPE)
        {
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(24, paramContext.var(localFieldInfo.getName() + "_asm", 2));
          _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
        }
        else if (localClass == String.class)
        {
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
          _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
        }
        else if (localClass.isEnum())
        {
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
          _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
        }
        else
        {
          if (Collection.class.isAssignableFrom(localClass))
          {
            Label localLabel1 = new Label();
            _isFlag(paramMethodVisitor, paramContext, j, localLabel1);
            paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
            if (((ParameterizedType)localType).getActualTypeArguments()[0] == String.class)
            {
              paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
              paramMethodVisitor.visitTypeInsn(192, ASMUtils.getType(localClass));
            }
            while (true)
            {
              _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
              paramMethodVisitor.visitLabel(localLabel1);
              break;
              paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
            }
          }
          Label localLabel2 = new Label();
          _isFlag(paramMethodVisitor, paramContext, j, localLabel2);
          paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
          paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
          _batchSetInvoke(paramContext, paramMethodVisitor, localFieldInfo);
          paramMethodVisitor.visitLabel(localLabel2);
        }
      }
    }
  }

  private void _batchSetInvoke(ASMDeserializerFactory.Context paramContext, MethodVisitor paramMethodVisitor, FieldInfo paramFieldInfo)
  {
    if (paramContext.getClazz().isInterface());
    for (int i = 185; paramFieldInfo.getMethod() != null; i = 182)
    {
      paramMethodVisitor.visitMethodInsn(i, ASMUtils.getType(paramFieldInfo.getDeclaringClass()), paramFieldInfo.getMethod().getName(), ASMUtils.getDesc(paramFieldInfo.getMethod()));
      if (!paramFieldInfo.getMethod().getReturnType().equals(Void.TYPE))
        paramMethodVisitor.visitInsn(87);
      return;
    }
    paramMethodVisitor.visitFieldInsn(181, ASMUtils.getType(paramFieldInfo.getDeclaringClass()), paramFieldInfo.getField().getName(), ASMUtils.getDesc(paramFieldInfo.getFieldClass()));
  }

  private void _createInstance(ClassWriter paramClassWriter, ASMDeserializerFactory.Context paramContext)
  {
    MethodVisitor localMethodVisitor = paramClassWriter.visitMethod(1, "createInstance", "(" + ASMUtils.getDesc(DefaultJSONParser.class) + ASMUtils.getDesc(java.lang.reflect.Type.class) + ")Ljava/lang/Object;", null, null);
    localMethodVisitor.visitTypeInsn(187, ASMUtils.getType(paramContext.getClazz()));
    localMethodVisitor.visitInsn(89);
    localMethodVisitor.visitMethodInsn(183, ASMUtils.getType(paramContext.getClazz()), "<init>", "()V");
    localMethodVisitor.visitInsn(176);
    localMethodVisitor.visitMaxs(3, 3);
    localMethodVisitor.visitEnd();
  }

  private void _deserialize_endCheck(ASMDeserializerFactory.Context paramContext, MethodVisitor paramMethodVisitor, Label paramLabel)
  {
    Label localLabel = new Label();
    paramMethodVisitor.visitIntInsn(21, paramContext.var("matchedCount"));
    paramMethodVisitor.visitJumpInsn(158, paramLabel);
    paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "token", "()I");
    paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONToken.class), "RBRACE", "I");
    paramMethodVisitor.visitJumpInsn(160, paramLabel);
    paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONToken.class), "COMMA", "I");
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "nextToken", "(I)V");
    paramMethodVisitor.visitLabel(localLabel);
  }

  private void _deserialze_list_obj(ASMDeserializerFactory.Context paramContext, MethodVisitor paramMethodVisitor, Label paramLabel, FieldInfo paramFieldInfo, Class<?> paramClass1, Class<?> paramClass2, int paramInt)
  {
    Label localLabel1 = new Label();
    Label localLabel2 = new Label();
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "matchField", "([C)Z");
    paramMethodVisitor.visitJumpInsn(154, localLabel1);
    paramMethodVisitor.visitInsn(1);
    paramMethodVisitor.visitVarInsn(58, paramContext.var(paramFieldInfo.getName() + "_asm"));
    paramMethodVisitor.visitJumpInsn(167, localLabel2);
    paramMethodVisitor.visitLabel(localLabel1);
    _setFlag(paramMethodVisitor, paramContext, paramInt);
    Label localLabel3 = new Label();
    paramMethodVisitor.visitVarInsn(25, 0);
    paramMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), paramFieldInfo.getName() + "_asm_list_item_deser__", ASMUtils.getDesc(ObjectDeserializer.class));
    paramMethodVisitor.visitJumpInsn(199, localLabel3);
    paramMethodVisitor.visitVarInsn(25, 0);
    paramMethodVisitor.visitVarInsn(25, 1);
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getConfig", "()" + ASMUtils.getDesc(ParserConfig.class));
    paramMethodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.getDesc(paramClass2)));
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(ParserConfig.class), "getDeserializer", "(" + ASMUtils.getDesc(java.lang.reflect.Type.class) + ")" + ASMUtils.getDesc(ObjectDeserializer.class));
    paramMethodVisitor.visitFieldInsn(181, paramContext.getClassName(), paramFieldInfo.getName() + "_asm_list_item_deser__", ASMUtils.getDesc(ObjectDeserializer.class));
    paramMethodVisitor.visitLabel(localLabel3);
    paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "token", "()I");
    paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONToken.class), "LBRACKET", "I");
    paramMethodVisitor.visitJumpInsn(160, paramLabel);
    paramMethodVisitor.visitVarInsn(25, 0);
    paramMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), paramFieldInfo.getName() + "_asm_list_item_deser__", ASMUtils.getDesc(ObjectDeserializer.class));
    paramMethodVisitor.visitMethodInsn(185, ASMUtils.getType(ObjectDeserializer.class), "getFastMatchToken", "()I");
    paramMethodVisitor.visitVarInsn(54, paramContext.var("fastMatchToken"));
    paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    paramMethodVisitor.visitVarInsn(21, paramContext.var("fastMatchToken"));
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "nextToken", "(I)V");
    Label localLabel4;
    Label localLabel5;
    if (paramClass1.isAssignableFrom(ArrayList.class))
    {
      paramMethodVisitor.visitTypeInsn(187, ASMUtils.getType(ArrayList.class));
      paramMethodVisitor.visitInsn(89);
      paramMethodVisitor.visitMethodInsn(183, ASMUtils.getType(ArrayList.class), "<init>", "()V");
      paramMethodVisitor.visitTypeInsn(192, ASMUtils.getType(paramClass1));
      paramMethodVisitor.visitVarInsn(58, paramContext.var(paramFieldInfo.getName() + "_asm"));
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getContext", "()" + ASMUtils.getDesc(ParseContext.class));
      paramMethodVisitor.visitVarInsn(58, paramContext.var("listContext"));
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitVarInsn(25, paramContext.var(paramFieldInfo.getName() + "_asm"));
      paramMethodVisitor.visitLdcInsn(paramFieldInfo.getName());
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)" + ASMUtils.getDesc(ParseContext.class));
      paramMethodVisitor.visitInsn(87);
      localLabel4 = new Label();
      localLabel5 = new Label();
      paramMethodVisitor.visitInsn(3);
      paramMethodVisitor.visitVarInsn(54, paramContext.var("i"));
      paramMethodVisitor.visitLabel(localLabel4);
      paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "token", "()I");
      paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONToken.class), "RBRACKET", "I");
      paramMethodVisitor.visitJumpInsn(159, localLabel5);
      paramMethodVisitor.visitVarInsn(25, 0);
      paramMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), paramFieldInfo.getName() + "_asm_list_item_deser__", ASMUtils.getDesc(ObjectDeserializer.class));
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitInsn(1);
      paramMethodVisitor.visitVarInsn(21, paramContext.var("i"));
      paramMethodVisitor.visitMethodInsn(184, ASMUtils.getType(Integer.class), "valueOf", "(I)Ljava/lang/Integer;");
      paramMethodVisitor.visitMethodInsn(185, ASMUtils.getType(ObjectDeserializer.class), "deserialze", "(" + ASMUtils.getDesc(DefaultJSONParser.class) + "Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
      paramMethodVisitor.visitVarInsn(58, paramContext.var("list_item_value"));
      paramMethodVisitor.visitIincInsn(paramContext.var("i"), 1);
      paramMethodVisitor.visitVarInsn(25, paramContext.var(paramFieldInfo.getName() + "_asm"));
      paramMethodVisitor.visitVarInsn(25, paramContext.var("list_item_value"));
      if (!paramClass1.isInterface())
        break label1812;
      paramMethodVisitor.visitMethodInsn(185, ASMUtils.getType(paramClass1), "add", "(Ljava/lang/Object;)Z");
    }
    while (true)
    {
      paramMethodVisitor.visitInsn(87);
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitVarInsn(25, paramContext.var(paramFieldInfo.getName() + "_asm"));
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "checkListResolve", "(Ljava/util/Collection;)V");
      paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "token", "()I");
      paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONToken.class), "COMMA", "I");
      paramMethodVisitor.visitJumpInsn(160, localLabel4);
      paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
      paramMethodVisitor.visitVarInsn(21, paramContext.var("fastMatchToken"));
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "nextToken", "(I)V");
      paramMethodVisitor.visitJumpInsn(167, localLabel4);
      paramMethodVisitor.visitLabel(localLabel5);
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitVarInsn(25, paramContext.var("listContext"));
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "setContext", "(" + ASMUtils.getDesc(ParseContext.class) + ")V");
      paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "token", "()I");
      paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONToken.class), "RBRACKET", "I");
      paramMethodVisitor.visitJumpInsn(160, paramLabel);
      paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
      paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONToken.class), "COMMA", "I");
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "nextToken", "(I)V");
      paramMethodVisitor.visitLabel(localLabel2);
      return;
      if (paramClass1.isAssignableFrom(LinkedList.class))
      {
        paramMethodVisitor.visitTypeInsn(187, ASMUtils.getType(LinkedList.class));
        paramMethodVisitor.visitInsn(89);
        paramMethodVisitor.visitMethodInsn(183, ASMUtils.getType(LinkedList.class), "<init>", "()V");
        break;
      }
      if (paramClass1.isAssignableFrom(HashSet.class))
      {
        paramMethodVisitor.visitTypeInsn(187, ASMUtils.getType(HashSet.class));
        paramMethodVisitor.visitInsn(89);
        paramMethodVisitor.visitMethodInsn(183, ASMUtils.getType(HashSet.class), "<init>", "()V");
        break;
      }
      if (paramClass1.isAssignableFrom(TreeSet.class))
      {
        paramMethodVisitor.visitTypeInsn(187, ASMUtils.getType(TreeSet.class));
        paramMethodVisitor.visitInsn(89);
        paramMethodVisitor.visitMethodInsn(183, ASMUtils.getType(TreeSet.class), "<init>", "()V");
        break;
      }
      paramMethodVisitor.visitTypeInsn(187, ASMUtils.getType(paramClass1));
      paramMethodVisitor.visitInsn(89);
      paramMethodVisitor.visitMethodInsn(183, ASMUtils.getType(paramClass1), "<init>", "()V");
      break;
      label1812: paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(paramClass1), "add", "(Ljava/lang/Object;)Z");
    }
  }

  private void _deserialze_obj(ASMDeserializerFactory.Context paramContext, MethodVisitor paramMethodVisitor, Label paramLabel, FieldInfo paramFieldInfo, Class<?> paramClass, int paramInt)
  {
    Label localLabel1 = new Label();
    Label localLabel2 = new Label();
    paramMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    paramMethodVisitor.visitVarInsn(25, 0);
    paramMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), paramFieldInfo.getName() + "_asm_prefix__", "[C");
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "matchField", "([C)Z");
    paramMethodVisitor.visitJumpInsn(154, localLabel1);
    paramMethodVisitor.visitInsn(1);
    paramMethodVisitor.visitVarInsn(58, paramContext.var(paramFieldInfo.getName() + "_asm"));
    paramMethodVisitor.visitJumpInsn(167, localLabel2);
    paramMethodVisitor.visitLabel(localLabel1);
    _setFlag(paramMethodVisitor, paramContext, paramInt);
    paramMethodVisitor.visitVarInsn(21, paramContext.var("matchedCount"));
    paramMethodVisitor.visitInsn(4);
    paramMethodVisitor.visitInsn(96);
    paramMethodVisitor.visitVarInsn(54, paramContext.var("matchedCount"));
    Label localLabel3 = new Label();
    paramMethodVisitor.visitVarInsn(25, 0);
    paramMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), paramFieldInfo.getName() + "_asm_deser__", ASMUtils.getDesc(ObjectDeserializer.class));
    paramMethodVisitor.visitJumpInsn(199, localLabel3);
    paramMethodVisitor.visitVarInsn(25, 0);
    paramMethodVisitor.visitVarInsn(25, 1);
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getConfig", "()" + ASMUtils.getDesc(ParserConfig.class));
    paramMethodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.getDesc(paramFieldInfo.getFieldClass())));
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(ParserConfig.class), "getDeserializer", "(" + ASMUtils.getDesc(java.lang.reflect.Type.class) + ")" + ASMUtils.getDesc(ObjectDeserializer.class));
    paramMethodVisitor.visitFieldInsn(181, paramContext.getClassName(), paramFieldInfo.getName() + "_asm_deser__", ASMUtils.getDesc(ObjectDeserializer.class));
    paramMethodVisitor.visitLabel(localLabel3);
    paramMethodVisitor.visitVarInsn(25, 0);
    paramMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), paramFieldInfo.getName() + "_asm_deser__", ASMUtils.getDesc(ObjectDeserializer.class));
    paramMethodVisitor.visitVarInsn(25, 1);
    if ((paramFieldInfo.getFieldType() instanceof Class))
      paramMethodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.getDesc(paramFieldInfo.getFieldClass())));
    while (true)
    {
      paramMethodVisitor.visitLdcInsn(paramFieldInfo.getName());
      paramMethodVisitor.visitMethodInsn(185, ASMUtils.getType(ObjectDeserializer.class), "deserialze", "(" + ASMUtils.getDesc(DefaultJSONParser.class) + ASMUtils.getDesc(java.lang.reflect.Type.class) + "Ljava/lang/Object;)Ljava/lang/Object;");
      paramMethodVisitor.visitTypeInsn(192, ASMUtils.getType(paramClass));
      paramMethodVisitor.visitVarInsn(58, paramContext.var(paramFieldInfo.getName() + "_asm"));
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getResolveStatus", "()I");
      paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(DefaultJSONParser.class), "NeedToResolve", "I");
      paramMethodVisitor.visitJumpInsn(160, localLabel2);
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getLastResolveTask", "()" + ASMUtils.getDesc(DefaultJSONParser.ResolveTask.class));
      paramMethodVisitor.visitVarInsn(58, paramContext.var("resolveTask"));
      paramMethodVisitor.visitVarInsn(25, paramContext.var("resolveTask"));
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getContext", "()" + ASMUtils.getDesc(ParseContext.class));
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.ResolveTask.class), "setOwnerContext", "(" + ASMUtils.getDesc(ParseContext.class) + ")V");
      paramMethodVisitor.visitVarInsn(25, paramContext.var("resolveTask"));
      paramMethodVisitor.visitVarInsn(25, 0);
      paramMethodVisitor.visitLdcInsn(paramFieldInfo.getName());
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(ASMJavaBeanDeserializer.class), "getFieldDeserializer", "(Ljava/lang/String;)" + ASMUtils.getDesc(FieldDeserializer.class));
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.ResolveTask.class), "setFieldDeserializer", "(" + ASMUtils.getDesc(FieldDeserializer.class) + ")V");
      paramMethodVisitor.visitVarInsn(25, 1);
      paramMethodVisitor.visitFieldInsn(178, ASMUtils.getType(DefaultJSONParser.class), "NONE", "I");
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "setResolveStatus", "(I)V");
      paramMethodVisitor.visitLabel(localLabel2);
      return;
      paramMethodVisitor.visitVarInsn(25, 0);
      paramMethodVisitor.visitLdcInsn(paramFieldInfo.getName());
      paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(ASMJavaBeanDeserializer.class), "getFieldType", "(Ljava/lang/String;)Ljava/lang/reflect/Type;");
    }
  }

  private void _init(ClassWriter paramClassWriter, ASMDeserializerFactory.Context paramContext)
  {
    int i = paramContext.getFieldInfoList().size();
    for (int j = 0; j < i; j++)
    {
      FieldInfo localFieldInfo3 = (FieldInfo)paramContext.getFieldInfoList().get(j);
      paramClassWriter.visitField(1, localFieldInfo3.getName() + "_asm_prefix__", "[C").visitEnd();
    }
    int k = paramContext.getFieldInfoList().size();
    int m = 0;
    if (m < k)
    {
      FieldInfo localFieldInfo2 = (FieldInfo)paramContext.getFieldInfoList().get(m);
      Class localClass = localFieldInfo2.getFieldClass();
      if ((!localClass.isPrimitive()) && (!localClass.isEnum()))
      {
        if (!Collection.class.isAssignableFrom(localClass))
          break label194;
        paramClassWriter.visitField(1, localFieldInfo2.getName() + "_asm_list_item_deser__", ASMUtils.getDesc(ObjectDeserializer.class)).visitEnd();
      }
      while (true)
      {
        m++;
        break;
        label194: paramClassWriter.visitField(1, localFieldInfo2.getName() + "_asm_deser__", ASMUtils.getDesc(ObjectDeserializer.class)).visitEnd();
      }
    }
    MethodVisitor localMethodVisitor = paramClassWriter.visitMethod(1, "<init>", "(" + ASMUtils.getDesc(ParserConfig.class) + ASMUtils.getDesc(Class.class) + ")V", null, null);
    localMethodVisitor.visitVarInsn(25, 0);
    localMethodVisitor.visitVarInsn(25, 1);
    localMethodVisitor.visitVarInsn(25, 2);
    localMethodVisitor.visitMethodInsn(183, ASMUtils.getType(ASMJavaBeanDeserializer.class), "<init>", "(" + ASMUtils.getDesc(ParserConfig.class) + ASMUtils.getDesc(Class.class) + ")V");
    localMethodVisitor.visitVarInsn(25, 0);
    localMethodVisitor.visitFieldInsn(180, ASMUtils.getType(ASMJavaBeanDeserializer.class), "serializer", ASMUtils.getDesc(ASMJavaBeanDeserializer.InnerJavaBeanDeserializer.class));
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JavaBeanDeserializer.class), "getFieldDeserializerMap", "()" + ASMUtils.getDesc(Map.class));
    localMethodVisitor.visitInsn(87);
    int n = paramContext.getFieldInfoList().size();
    for (int i1 = 0; i1 < n; i1++)
    {
      FieldInfo localFieldInfo1 = (FieldInfo)paramContext.getFieldInfoList().get(i1);
      localMethodVisitor.visitVarInsn(25, 0);
      localMethodVisitor.visitLdcInsn("\"" + localFieldInfo1.getName() + "\":");
      localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(String.class), "toCharArray", "()" + ASMUtils.getDesc([C.class));
      localMethodVisitor.visitFieldInsn(181, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
    }
    localMethodVisitor.visitInsn(177);
    localMethodVisitor.visitMaxs(4, 4);
    localMethodVisitor.visitEnd();
  }

  private void _loadCreatorParameters(ASMDeserializerFactory.Context paramContext, MethodVisitor paramMethodVisitor)
  {
    List localList = paramContext.getBeanInfo().getFieldList();
    int i = localList.size();
    int j = 0;
    if (j < i)
    {
      FieldInfo localFieldInfo = (FieldInfo)localList.get(j);
      Class localClass = localFieldInfo.getFieldClass();
      java.lang.reflect.Type localType = localFieldInfo.getFieldType();
      if (localClass == Boolean.TYPE)
        paramMethodVisitor.visitVarInsn(21, paramContext.var(localFieldInfo.getName() + "_asm"));
      while (true)
      {
        j++;
        break;
        if (localClass == Byte.TYPE)
          paramMethodVisitor.visitVarInsn(21, paramContext.var(localFieldInfo.getName() + "_asm"));
        else if (localClass == Short.TYPE)
          paramMethodVisitor.visitVarInsn(21, paramContext.var(localFieldInfo.getName() + "_asm"));
        else if (localClass == Integer.TYPE)
          paramMethodVisitor.visitVarInsn(21, paramContext.var(localFieldInfo.getName() + "_asm"));
        else if (localClass == Long.TYPE)
          paramMethodVisitor.visitVarInsn(22, paramContext.var(localFieldInfo.getName() + "_asm", 2));
        else if (localClass == Float.TYPE)
          paramMethodVisitor.visitVarInsn(23, paramContext.var(localFieldInfo.getName() + "_asm"));
        else if (localClass == Double.TYPE)
          paramMethodVisitor.visitVarInsn(24, paramContext.var(localFieldInfo.getName() + "_asm", 2));
        else if (localClass == String.class)
          paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
        else if (localClass.isEnum())
          paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
        else if (Collection.class.isAssignableFrom(localClass))
        {
          if (((ParameterizedType)localType).getActualTypeArguments()[0] == String.class)
          {
            paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
            paramMethodVisitor.visitTypeInsn(192, ASMUtils.getType(localClass));
          }
          else
          {
            paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
          }
        }
        else
          paramMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo.getName() + "_asm"));
      }
    }
  }

  private void _setContext(ASMDeserializerFactory.Context paramContext, MethodVisitor paramMethodVisitor)
  {
    paramMethodVisitor.visitVarInsn(25, 1);
    paramMethodVisitor.visitVarInsn(25, paramContext.var("context"));
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "setContext", "(" + ASMUtils.getDesc(ParseContext.class) + ")V");
    Label localLabel = new Label();
    paramMethodVisitor.visitVarInsn(25, paramContext.var("childContext"));
    paramMethodVisitor.visitJumpInsn(198, localLabel);
    paramMethodVisitor.visitVarInsn(25, paramContext.var("childContext"));
    paramMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
    paramMethodVisitor.visitMethodInsn(182, ASMUtils.getType(ParseContext.class), "setObject", "(Ljava/lang/Object;)V");
    paramMethodVisitor.visitLabel(localLabel);
  }

  public static final ASMDeserializerFactory getInstance()
  {
    return instance;
  }

  void _deserialze(ClassWriter paramClassWriter, ASMDeserializerFactory.Context paramContext)
  {
    if (paramContext.getFieldInfoList().size() == 0)
      return;
    Iterator localIterator = paramContext.getFieldInfoList().iterator();
    while (true)
      if (localIterator.hasNext())
      {
        FieldInfo localFieldInfo2 = (FieldInfo)localIterator.next();
        Class localClass5 = localFieldInfo2.getFieldClass();
        java.lang.reflect.Type localType3 = localFieldInfo2.getFieldType();
        if (localClass5 == Character.TYPE)
          break;
        if (Collection.class.isAssignableFrom(localClass5))
        {
          if (!(localType3 instanceof ParameterizedType))
            break;
          if (!(((ParameterizedType)localType3).getActualTypeArguments()[0] instanceof Class))
            return;
        }
      }
    Collections.sort(paramContext.getFieldInfoList());
    MethodVisitor localMethodVisitor = paramClassWriter.visitMethod(1, "deserialze", "(" + ASMUtils.getDesc(DefaultJSONParser.class) + ASMUtils.getDesc(java.lang.reflect.Type.class) + "Ljava/lang/Object;)Ljava/lang/Object;", null, null);
    Label localLabel1 = new Label();
    Label localLabel2 = new Label();
    Label localLabel3 = new Label();
    Label localLabel4 = new Label();
    localMethodVisitor.visitVarInsn(25, 1);
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getLexer", "()" + ASMUtils.getDesc(JSONLexer.class));
    localMethodVisitor.visitTypeInsn(192, ASMUtils.getType(JSONScanner.class));
    localMethodVisitor.visitVarInsn(58, paramContext.var("lexer"));
    localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    localMethodVisitor.visitFieldInsn(178, ASMUtils.getType(Feature.class), "SortFeidFastMatch", "L" + ASMUtils.getType(Feature.class) + ";");
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "isEnabled", "(L" + ASMUtils.getType(Feature.class) + ";)Z");
    localMethodVisitor.visitJumpInsn(153, localLabel2);
    localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    localMethodVisitor.visitFieldInsn(180, ASMUtils.getType(JSONScanner.class), "resetCount", "I");
    localMethodVisitor.visitJumpInsn(157, localLabel2);
    localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    localMethodVisitor.visitLdcInsn(paramContext.getClazz().getName());
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanType", "(Ljava/lang/String;)I");
    localMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONScanner.class), "NOT_MATCH", "I");
    localMethodVisitor.visitJumpInsn(159, localLabel2);
    localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "getBufferPosition", "()I");
    localMethodVisitor.visitVarInsn(54, paramContext.var("mark"));
    localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "getCurrent", "()C");
    localMethodVisitor.visitVarInsn(54, paramContext.var("mark_ch"));
    localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "token", "()I");
    localMethodVisitor.visitVarInsn(54, paramContext.var("mark_token"));
    localMethodVisitor.visitVarInsn(25, 1);
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getContextLength", "()I");
    localMethodVisitor.visitVarInsn(54, paramContext.var("contextLength"));
    localMethodVisitor.visitVarInsn(25, 1);
    localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getContext", "()Lcom/alibaba/fastjson/parser/ParseContext;");
    localMethodVisitor.visitVarInsn(58, paramContext.var("mark_context"));
    localMethodVisitor.visitInsn(3);
    localMethodVisitor.visitVarInsn(54, paramContext.var("matchedCount"));
    Constructor localConstructor1 = paramContext.getBeanInfo().getDefaultConstructor();
    if (paramContext.getClazz().isInterface())
    {
      localMethodVisitor.visitVarInsn(25, 0);
      localMethodVisitor.visitVarInsn(25, 1);
      localMethodVisitor.visitMethodInsn(183, ASMUtils.getType(ASMJavaBeanDeserializer.class), "createInstance", "(" + ASMUtils.getDesc(DefaultJSONParser.class) + ")Ljava/lang/Object;");
      localMethodVisitor.visitTypeInsn(192, ASMUtils.getType(paramContext.getClazz()));
      localMethodVisitor.visitVarInsn(58, paramContext.var("instance"));
    }
    while (true)
    {
      localMethodVisitor.visitVarInsn(25, 1);
      localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getContext", "()" + ASMUtils.getDesc(ParseContext.class));
      localMethodVisitor.visitVarInsn(58, paramContext.var("context"));
      localMethodVisitor.visitVarInsn(25, 1);
      localMethodVisitor.visitVarInsn(25, paramContext.var("context"));
      localMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
      localMethodVisitor.visitVarInsn(25, 3);
      localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "setContext", "(" + ASMUtils.getDesc(ParseContext.class) + "Ljava/lang/Object;Ljava/lang/Object;)" + ASMUtils.getDesc(ParseContext.class));
      localMethodVisitor.visitVarInsn(58, paramContext.var("childContext"));
      localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
      localMethodVisitor.visitFieldInsn(180, ASMUtils.getType(JSONScanner.class), "matchStat", "I");
      localMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONScanner.class), "END", "I");
      localMethodVisitor.visitJumpInsn(159, localLabel3);
      localMethodVisitor.visitInsn(3);
      localMethodVisitor.visitIntInsn(54, paramContext.var("matchStat"));
      int i = 0;
      int j = paramContext.getFieldInfoList().size();
      while (i < j)
      {
        localMethodVisitor.visitInsn(3);
        localMethodVisitor.visitVarInsn(54, paramContext.var("_asm_flag_" + i / 32));
        i += 32;
      }
      if (localConstructor1 != null)
      {
        if (Modifier.isPublic(localConstructor1.getModifiers()))
        {
          localMethodVisitor.visitTypeInsn(187, ASMUtils.getType(paramContext.getClazz()));
          localMethodVisitor.visitInsn(89);
          localMethodVisitor.visitMethodInsn(183, ASMUtils.getType(paramContext.getClazz()), "<init>", "()V");
          localMethodVisitor.visitVarInsn(58, paramContext.var("instance"));
        }
        else
        {
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitVarInsn(25, 1);
          localMethodVisitor.visitMethodInsn(183, ASMUtils.getType(ASMJavaBeanDeserializer.class), "createInstance", "(" + ASMUtils.getDesc(DefaultJSONParser.class) + ")Ljava/lang/Object;");
          localMethodVisitor.visitTypeInsn(192, ASMUtils.getType(paramContext.getClazz()));
          localMethodVisitor.visitVarInsn(58, paramContext.var("instance"));
        }
      }
      else
      {
        localMethodVisitor.visitInsn(1);
        localMethodVisitor.visitTypeInsn(192, ASMUtils.getType(paramContext.getClazz()));
        localMethodVisitor.visitVarInsn(58, paramContext.var("instance"));
      }
    }
    int k = 0;
    int m = paramContext.getFieldInfoList().size();
    if (k < m)
    {
      FieldInfo localFieldInfo1 = (FieldInfo)paramContext.getFieldInfoList().get(k);
      Class localClass3 = localFieldInfo1.getFieldClass();
      java.lang.reflect.Type localType1 = localFieldInfo1.getFieldType();
      Label localLabel5 = new Label();
      if (localClass3 == Boolean.TYPE)
      {
        localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
        localMethodVisitor.visitVarInsn(25, 0);
        localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
        localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldBoolean", "([C)Z");
        localMethodVisitor.visitVarInsn(54, paramContext.var(localFieldInfo1.getName() + "_asm"));
        label1670: localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
        localMethodVisitor.visitFieldInsn(180, ASMUtils.getType(JSONScanner.class), "matchStat", "I");
        localMethodVisitor.visitInsn(89);
        localMethodVisitor.visitVarInsn(54, paramContext.var("matchStat"));
        localMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONScanner.class), "NOT_MATCH", "I");
        localMethodVisitor.visitJumpInsn(159, localLabel1);
        localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
        localMethodVisitor.visitFieldInsn(180, ASMUtils.getType(JSONScanner.class), "matchStat", "I");
        localMethodVisitor.visitJumpInsn(158, localLabel5);
        localMethodVisitor.visitVarInsn(21, paramContext.var("matchedCount"));
        localMethodVisitor.visitInsn(4);
        localMethodVisitor.visitInsn(96);
        localMethodVisitor.visitVarInsn(54, paramContext.var("matchedCount"));
        localMethodVisitor.visitLabel(localLabel5);
        if (k == m - 1)
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitFieldInsn(180, ASMUtils.getType(JSONScanner.class), "matchStat", "I");
          localMethodVisitor.visitFieldInsn(178, ASMUtils.getType(JSONScanner.class), "END", "I");
          localMethodVisitor.visitJumpInsn(160, localLabel1);
        }
      }
      while (true)
      {
        k++;
        break;
        if (localClass3 == Byte.TYPE)
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldInt", "([C)I");
          localMethodVisitor.visitVarInsn(54, paramContext.var(localFieldInfo1.getName() + "_asm"));
          break label1670;
        }
        if (localClass3 == Short.TYPE)
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldInt", "([C)I");
          localMethodVisitor.visitVarInsn(54, paramContext.var(localFieldInfo1.getName() + "_asm"));
          break label1670;
        }
        if (localClass3 == Integer.TYPE)
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldInt", "([C)I");
          localMethodVisitor.visitVarInsn(54, paramContext.var(localFieldInfo1.getName() + "_asm"));
          break label1670;
        }
        if (localClass3 == Long.TYPE)
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldLong", "([C)J");
          localMethodVisitor.visitVarInsn(55, paramContext.var(localFieldInfo1.getName() + "_asm", 2));
          break label1670;
        }
        if (localClass3 == Float.TYPE)
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldFloat", "([C)F");
          localMethodVisitor.visitVarInsn(56, paramContext.var(localFieldInfo1.getName() + "_asm"));
          break label1670;
        }
        if (localClass3 == Double.TYPE)
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldDouble", "([C)D");
          localMethodVisitor.visitVarInsn(57, paramContext.var(localFieldInfo1.getName() + "_asm", 2));
          break label1670;
        }
        if (localClass3 == String.class)
        {
          Label localLabel6 = new Label();
          localMethodVisitor.visitIntInsn(21, paramContext.var("matchStat"));
          localMethodVisitor.visitInsn(7);
          localMethodVisitor.visitJumpInsn(160, localLabel6);
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "stringDefaultValue", "()Ljava/lang/String;");
          localMethodVisitor.visitVarInsn(58, paramContext.var(localFieldInfo1.getName() + "_asm"));
          localMethodVisitor.visitJumpInsn(167, localLabel5);
          localMethodVisitor.visitLabel(localLabel6);
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldString", "([C)Ljava/lang/String;");
          localMethodVisitor.visitVarInsn(58, paramContext.var(localFieldInfo1.getName() + "_asm"));
          break label1670;
        }
        if (localClass3.isEnum())
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          Label localLabel7 = new Label();
          localMethodVisitor.visitInsn(1);
          localMethodVisitor.visitTypeInsn(192, ASMUtils.getType(localClass3));
          localMethodVisitor.visitVarInsn(58, paramContext.var(localFieldInfo1.getName() + "_asm"));
          localMethodVisitor.visitVarInsn(25, 1);
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "getSymbolTable", "()" + ASMUtils.getDesc(SymbolTable.class));
          localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldSymbol", "([C" + ASMUtils.getDesc(SymbolTable.class) + ")Ljava/lang/String;");
          localMethodVisitor.visitInsn(89);
          localMethodVisitor.visitVarInsn(58, paramContext.var(localFieldInfo1.getName() + "_asm_enumName"));
          localMethodVisitor.visitJumpInsn(198, localLabel7);
          localMethodVisitor.visitVarInsn(25, paramContext.var(localFieldInfo1.getName() + "_asm_enumName"));
          localMethodVisitor.visitMethodInsn(184, ASMUtils.getType(localClass3), "valueOf", "(Ljava/lang/String;)" + ASMUtils.getDesc(localClass3));
          localMethodVisitor.visitVarInsn(58, paramContext.var(localFieldInfo1.getName() + "_asm"));
          localMethodVisitor.visitLabel(localLabel7);
          break label1670;
        }
        if (Collection.class.isAssignableFrom(localClass3))
        {
          localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
          localMethodVisitor.visitVarInsn(25, 0);
          localMethodVisitor.visitFieldInsn(180, paramContext.getClassName(), localFieldInfo1.getName() + "_asm_prefix__", "[C");
          java.lang.reflect.Type localType2 = ((ParameterizedType)localType1).getActualTypeArguments()[0];
          if ((localType2 instanceof Class))
          {
            Class localClass4 = (Class)localType2;
            if (!Modifier.isPublic(localClass4.getModifiers()))
              throw new ASMException("can not create ASMParser");
            if (localClass4 == String.class)
            {
              localMethodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(ASMUtils.getDesc(localClass3)));
              localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "scanFieldStringArray", "([CLjava/lang/Class;)" + ASMUtils.getDesc(Collection.class));
              localMethodVisitor.visitVarInsn(58, paramContext.var(localFieldInfo1.getName() + "_asm"));
              _setFlag(localMethodVisitor, paramContext, k);
              break label1670;
            }
            _deserialze_list_obj(paramContext, localMethodVisitor, localLabel1, localFieldInfo1, localClass3, localClass4, k);
            if (k != m - 1)
              continue;
            _deserialize_endCheck(paramContext, localMethodVisitor, localLabel1);
            continue;
          }
          throw new ASMException("can not create ASMParser");
        }
        _deserialze_obj(paramContext, localMethodVisitor, localLabel1, localFieldInfo1, localClass3, k);
        if (k == m - 1)
          _deserialize_endCheck(paramContext, localMethodVisitor, localLabel1);
      }
    }
    localMethodVisitor.visitLabel(localLabel4);
    int n;
    int i5;
    int i6;
    if ((!paramContext.getClazz().isInterface()) && (!Modifier.isAbstract(paramContext.getClazz().getModifiers())))
    {
      if (localConstructor1 != null)
        _batchSet(paramContext, localMethodVisitor);
    }
    else
    {
      localMethodVisitor.visitLabel(localLabel3);
      _setContext(paramContext, localMethodVisitor);
      localMethodVisitor.visitVarInsn(25, paramContext.var("instance"));
      localMethodVisitor.visitInsn(176);
      localMethodVisitor.visitLabel(localLabel1);
      localMethodVisitor.visitVarInsn(25, paramContext.var("lexer"));
      localMethodVisitor.visitVarInsn(21, paramContext.var("mark"));
      localMethodVisitor.visitVarInsn(21, paramContext.var("mark_ch"));
      localMethodVisitor.visitVarInsn(21, paramContext.var("mark_token"));
      localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(JSONScanner.class), "reset", "(ICI)V");
      localMethodVisitor.visitVarInsn(25, 1);
      localMethodVisitor.visitVarInsn(25, paramContext.var("mark_context"));
      localMethodVisitor.visitVarInsn(21, paramContext.var("contextLength"));
      localMethodVisitor.visitMethodInsn(182, ASMUtils.getType(DefaultJSONParser.class), "clearContext", "(Lcom/alibaba/fastjson/parser/ParseContext;I)V");
      localMethodVisitor.visitLabel(localLabel2);
      localMethodVisitor.visitVarInsn(25, 0);
      localMethodVisitor.visitVarInsn(25, 1);
      localMethodVisitor.visitVarInsn(25, 2);
      localMethodVisitor.visitVarInsn(25, 3);
      localMethodVisitor.visitMethodInsn(183, ASMUtils.getType(ASMJavaBeanDeserializer.class), "deserialze", "(" + ASMUtils.getDesc(DefaultJSONParser.class) + ASMUtils.getDesc(java.lang.reflect.Type.class) + "Ljava/lang/Object;)Ljava/lang/Object;");
      localMethodVisitor.visitInsn(176);
      n = 4;
      Constructor localConstructor2 = paramContext.getBeanInfo().getCreatorConstructor();
      if (localConstructor2 == null)
        break label4402;
      Class[] arrayOfClass2 = localConstructor2.getParameterTypes();
      int i4 = arrayOfClass2.length;
      i5 = 2;
      i6 = 0;
      label4159: if (i6 >= i4)
        break label4371;
      Class localClass2 = arrayOfClass2[i6];
      if ((localClass2 != Long.TYPE) && (localClass2 != Double.TYPE))
        break label4365;
      i5 += 2;
    }
    while (true)
    {
      i6++;
      break label4159;
      Constructor localConstructor3 = paramContext.getBeanInfo().getCreatorConstructor();
      if (localConstructor3 != null)
      {
        localMethodVisitor.visitTypeInsn(187, ASMUtils.getType(paramContext.getClazz()));
        localMethodVisitor.visitInsn(89);
        _loadCreatorParameters(paramContext, localMethodVisitor);
        localMethodVisitor.visitMethodInsn(183, ASMUtils.getType(paramContext.getClazz()), "<init>", ASMUtils.getDesc(localConstructor3));
        localMethodVisitor.visitVarInsn(58, paramContext.var("instance"));
        break;
      }
      Method localMethod2 = paramContext.getBeanInfo().getFactoryMethod();
      if (localMethod2 != null)
      {
        _loadCreatorParameters(paramContext, localMethodVisitor);
        localMethodVisitor.visitMethodInsn(184, ASMUtils.getType(localMethod2.getDeclaringClass()), localMethod2.getName(), ASMUtils.getDesc(localMethod2));
        localMethodVisitor.visitVarInsn(58, paramContext.var("instance"));
        break;
      }
      throw new JSONException("TODO");
      label4365: i5++;
    }
    label4371: if (4 < i5);
    while (true)
    {
      n = i5;
      while (true)
      {
        localMethodVisitor.visitMaxs(n, paramContext.getVariantCount());
        localMethodVisitor.visitEnd();
        return;
        label4402: Method localMethod1 = paramContext.getBeanInfo().getFactoryMethod();
        if (localMethod1 != null)
        {
          Class[] arrayOfClass1 = localMethod1.getParameterTypes();
          int i1 = arrayOfClass1.length;
          int i2 = 2;
          int i3 = 0;
          if (i3 < i1)
          {
            Class localClass1 = arrayOfClass1[i3];
            if ((localClass1 == Long.TYPE) || (localClass1 == Double.TYPE))
              i2 += 2;
            while (true)
            {
              i3++;
              break;
              i2++;
            }
          }
          if (4 < i2)
            n = i2;
        }
      }
      i5 = n;
    }
  }

  void _isFlag(MethodVisitor paramMethodVisitor, ASMDeserializerFactory.Context paramContext, int paramInt, Label paramLabel)
  {
    paramMethodVisitor.visitVarInsn(21, paramContext.var("_asm_flag_" + paramInt / 32));
    paramMethodVisitor.visitLdcInsn(Integer.valueOf(1 << paramInt));
    paramMethodVisitor.visitInsn(126);
    paramMethodVisitor.visitJumpInsn(153, paramLabel);
  }

  void _setFlag(MethodVisitor paramMethodVisitor, ASMDeserializerFactory.Context paramContext, int paramInt)
  {
    String str = "_asm_flag_" + paramInt / 32;
    paramMethodVisitor.visitVarInsn(21, paramContext.var(str));
    paramMethodVisitor.visitLdcInsn(Integer.valueOf(1 << paramInt));
    paramMethodVisitor.visitInsn(128);
    paramMethodVisitor.visitVarInsn(54, paramContext.var(str));
  }

  public FieldDeserializer createFieldDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    Class localClass = paramFieldInfo.getFieldClass();
    if ((localClass == Integer.TYPE) || (localClass == Long.TYPE) || (localClass == String.class))
      return createStringFieldDeserializer(paramParserConfig, paramClass, paramFieldInfo);
    return paramParserConfig.createFieldDeserializerWithoutASM(paramParserConfig, paramClass, paramFieldInfo);
  }

  public ObjectDeserializer createJavaBeanDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, java.lang.reflect.Type paramType)
  {
    if (paramClass.isPrimitive())
      throw new IllegalArgumentException("not support type :" + paramClass.getName());
    String str = getGenClassName(paramClass);
    ClassWriter localClassWriter = new ClassWriter();
    localClassWriter.visit(49, 33, str, ASMUtils.getType(ASMJavaBeanDeserializer.class), null);
    DeserializeBeanInfo localDeserializeBeanInfo = DeserializeBeanInfo.computeSetters(paramClass, paramType);
    _init(localClassWriter, new ASMDeserializerFactory.Context(str, paramParserConfig, localDeserializeBeanInfo, 3));
    _createInstance(localClassWriter, new ASMDeserializerFactory.Context(str, paramParserConfig, localDeserializeBeanInfo, 3));
    _deserialze(localClassWriter, new ASMDeserializerFactory.Context(str, paramParserConfig, localDeserializeBeanInfo, 4));
    byte[] arrayOfByte = localClassWriter.toByteArray();
    return (ObjectDeserializer)this.classLoader.defineClassPublic(str, arrayOfByte, 0, arrayOfByte.length).getConstructor(new Class[] { ParserConfig.class, Class.class }).newInstance(new Object[] { paramParserConfig, paramClass });
  }

  public FieldDeserializer createStringFieldDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    Class localClass = paramFieldInfo.getFieldClass();
    Method localMethod = paramFieldInfo.getMethod();
    String str = getGenFieldDeserializer(paramClass, paramFieldInfo);
    ClassWriter localClassWriter = new ClassWriter();
    Object localObject;
    int i;
    if (localClass == Integer.TYPE)
    {
      localObject = IntegerFieldDeserializer.class;
      if (!paramClass.isInterface())
        break label488;
      i = 185;
      label54: localClassWriter.visit(49, 33, str, ASMUtils.getType((Class)localObject), null);
      MethodVisitor localMethodVisitor1 = localClassWriter.visitMethod(1, "<init>", "(" + ASMUtils.getDesc(ParserConfig.class) + ASMUtils.getDesc(Class.class) + ASMUtils.getDesc(FieldInfo.class) + ")V", null, null);
      localMethodVisitor1.visitVarInsn(25, 0);
      localMethodVisitor1.visitVarInsn(25, 1);
      localMethodVisitor1.visitVarInsn(25, 2);
      localMethodVisitor1.visitVarInsn(25, 3);
      localMethodVisitor1.visitMethodInsn(183, ASMUtils.getType((Class)localObject), "<init>", "(" + ASMUtils.getDesc(ParserConfig.class) + ASMUtils.getDesc(Class.class) + ASMUtils.getDesc(FieldInfo.class) + ")V");
      localMethodVisitor1.visitInsn(177);
      localMethodVisitor1.visitMaxs(4, 6);
      localMethodVisitor1.visitEnd();
      if (localMethod != null)
      {
        if (localClass != Integer.TYPE)
          break label496;
        MethodVisitor localMethodVisitor4 = localClassWriter.visitMethod(1, "setValue", "(" + ASMUtils.getDesc(Object.class) + "I)V", null, null);
        localMethodVisitor4.visitVarInsn(25, 1);
        localMethodVisitor4.visitTypeInsn(192, ASMUtils.getType(localMethod.getDeclaringClass()));
        localMethodVisitor4.visitVarInsn(21, 2);
        localMethodVisitor4.visitMethodInsn(i, ASMUtils.getType(localMethod.getDeclaringClass()), localMethod.getName(), ASMUtils.getDesc(localMethod));
        localMethodVisitor4.visitInsn(177);
        localMethodVisitor4.visitMaxs(3, 3);
        localMethodVisitor4.visitEnd();
      }
    }
    while (true)
    {
      byte[] arrayOfByte = localClassWriter.toByteArray();
      return (FieldDeserializer)this.classLoader.defineClassPublic(str, arrayOfByte, 0, arrayOfByte.length).getConstructor(new Class[] { ParserConfig.class, Class.class, FieldInfo.class }).newInstance(new Object[] { paramParserConfig, paramClass, paramFieldInfo });
      if (localClass == Long.TYPE)
      {
        localObject = LongFieldDeserializer.class;
        break;
      }
      localObject = StringFieldDeserializer.class;
      break;
      label488: i = 182;
      break label54;
      label496: if (localClass == Long.TYPE)
      {
        MethodVisitor localMethodVisitor3 = localClassWriter.visitMethod(1, "setValue", "(" + ASMUtils.getDesc(Object.class) + "J)V", null, null);
        localMethodVisitor3.visitVarInsn(25, 1);
        localMethodVisitor3.visitTypeInsn(192, ASMUtils.getType(localMethod.getDeclaringClass()));
        localMethodVisitor3.visitVarInsn(22, 2);
        localMethodVisitor3.visitMethodInsn(i, ASMUtils.getType(localMethod.getDeclaringClass()), localMethod.getName(), ASMUtils.getDesc(localMethod));
        localMethodVisitor3.visitInsn(177);
        localMethodVisitor3.visitMaxs(3, 4);
        localMethodVisitor3.visitEnd();
      }
      else
      {
        MethodVisitor localMethodVisitor2 = localClassWriter.visitMethod(1, "setValue", "(" + ASMUtils.getDesc(Object.class) + ASMUtils.getDesc(Object.class) + ")V", null, null);
        localMethodVisitor2.visitVarInsn(25, 1);
        localMethodVisitor2.visitTypeInsn(192, ASMUtils.getType(localMethod.getDeclaringClass()));
        localMethodVisitor2.visitVarInsn(25, 2);
        localMethodVisitor2.visitTypeInsn(192, ASMUtils.getType(localClass));
        localMethodVisitor2.visitMethodInsn(i, ASMUtils.getType(localMethod.getDeclaringClass()), localMethod.getName(), ASMUtils.getDesc(localMethod));
        localMethodVisitor2.visitInsn(177);
        localMethodVisitor2.visitMaxs(3, 3);
        localMethodVisitor2.visitEnd();
      }
    }
  }

  public String getGenClassName(Class<?> paramClass)
  {
    return "Fastjson_ASM_" + paramClass.getSimpleName() + "_" + this.seed.incrementAndGet();
  }

  public String getGenFieldDeserializer(Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    String str = "Fastjson_ASM__Field_" + paramClass.getSimpleName();
    return str + "_" + paramFieldInfo.getName() + "_" + this.seed.incrementAndGet();
  }

  public boolean isExternalClass(Class<?> paramClass)
  {
    return this.classLoader.isExternalClass(paramClass);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory
 * JD-Core Version:    0.6.2
 */