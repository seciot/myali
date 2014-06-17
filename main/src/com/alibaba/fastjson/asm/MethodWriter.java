package com.alibaba.fastjson.asm;

class MethodWriter
  implements MethodVisitor
{
  static final int ACC_CONSTRUCTOR = 262144;
  static final int APPEND_FRAME = 252;
  static final int CHOP_FRAME = 248;
  static final int FULL_FRAME = 255;
  static final int RESERVED = 128;
  static final int SAME_FRAME = 0;
  static final int SAME_FRAME_EXTENDED = 251;
  static final int SAME_LOCALS_1_STACK_ITEM_FRAME = 64;
  static final int SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED = 247;
  private int access;
  int classReaderLength;
  private ByteVector code = new ByteVector();
  final ClassWriter cw;
  private final int desc;
  int exceptionCount;
  int[] exceptions;
  private int maxLocals;
  private int maxStack;
  private final int name;
  MethodWriter next;
  private boolean resize;

  MethodWriter(ClassWriter paramClassWriter, int paramInt, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    if (paramClassWriter.firstMethod == null)
      paramClassWriter.firstMethod = this;
    while (true)
    {
      paramClassWriter.lastMethod = this;
      this.cw = paramClassWriter;
      this.access = paramInt;
      this.name = paramClassWriter.newUTF8(paramString1);
      this.desc = paramClassWriter.newUTF8(paramString2);
      if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
        break;
      this.exceptionCount = paramArrayOfString.length;
      this.exceptions = new int[this.exceptionCount];
      for (int i = 0; i < this.exceptionCount; i++)
        this.exceptions[i] = paramClassWriter.newClass(paramArrayOfString[i]);
      paramClassWriter.lastMethod.next = this;
    }
  }

  final int getSize()
  {
    if (this.resize)
      throw new UnsupportedOperationException();
    int i = 8;
    if (this.code.length > 0)
    {
      this.cw.newUTF8("Code");
      i = 8 + (0 + (18 + this.code.length));
    }
    if (this.exceptionCount > 0)
    {
      this.cw.newUTF8("Exceptions");
      i += 8 + 2 * this.exceptionCount;
    }
    return i;
  }

  final void put(ByteVector paramByteVector)
  {
    int i = 0;
    int j = 0x60000 | (0x40000 & this.access) / 64;
    paramByteVector.putShort(this.access & (j ^ 0xFFFFFFFF)).putShort(this.name).putShort(this.desc);
    if (this.code.length > 0);
    for (int k = 1; ; k = 0)
    {
      if (this.exceptionCount > 0)
        k++;
      paramByteVector.putShort(k);
      if (this.code.length > 0)
      {
        int m = 0 + (12 + this.code.length);
        paramByteVector.putShort(this.cw.newUTF8("Code")).putInt(m);
        paramByteVector.putShort(this.maxStack).putShort(this.maxLocals);
        paramByteVector.putInt(this.code.length).putByteArray(this.code.data, 0, this.code.length);
        paramByteVector.putShort(0);
        paramByteVector.putShort(0);
      }
      if (this.exceptionCount > 0)
      {
        paramByteVector.putShort(this.cw.newUTF8("Exceptions")).putInt(2 + 2 * this.exceptionCount);
        paramByteVector.putShort(this.exceptionCount);
        while (i < this.exceptionCount)
        {
          paramByteVector.putShort(this.exceptions[i]);
          i++;
        }
      }
      return;
    }
  }

  public void visitEnd()
  {
  }

  public void visitFieldInsn(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    Item localItem = this.cw.newFieldItem(paramString1, paramString2, paramString3);
    this.code.put12(paramInt, localItem.index);
  }

  public void visitIincInsn(int paramInt1, int paramInt2)
  {
    if ((paramInt1 > 255) || (paramInt2 > 127) || (paramInt2 < -128))
    {
      this.code.putByte(196).put12(132, paramInt1).putShort(paramInt2);
      return;
    }
    this.code.putByte(132).put11(paramInt1, paramInt2);
  }

  public void visitInsn(int paramInt)
  {
    this.code.putByte(paramInt);
  }

  public void visitIntInsn(int paramInt1, int paramInt2)
  {
    this.code.put11(paramInt1, paramInt2);
  }

  public void visitJumpInsn(int paramInt, Label paramLabel)
  {
    if (((0x2 & paramLabel.status) != 0) && (paramLabel.position - this.code.length < -32768))
      throw new UnsupportedOperationException();
    this.code.putByte(paramInt);
    paramLabel.put(this, this.code, -1 + this.code.length);
  }

  public void visitLabel(Label paramLabel)
  {
    this.resize |= paramLabel.resolve(this, this.code.length, this.code.data);
  }

  public void visitLdcInsn(Object paramObject)
  {
    Item localItem = this.cw.newConstItem(paramObject);
    int i = localItem.index;
    if ((localItem.type == 5) || (localItem.type == 6))
    {
      this.code.put12(20, i);
      return;
    }
    if (i >= 256)
    {
      this.code.put12(19, i);
      return;
    }
    this.code.put11(18, i);
  }

  public void visitMaxs(int paramInt1, int paramInt2)
  {
    this.maxStack = paramInt1;
    this.maxLocals = paramInt2;
  }

  public void visitMethodInsn(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    boolean bool;
    Item localItem;
    int i;
    int j;
    if (paramInt == 185)
    {
      bool = true;
      localItem = this.cw.newMethodItem(paramString1, paramString2, paramString3, bool);
      i = localItem.intVal;
      if (!bool)
        break label87;
      if (i != 0)
        break label102;
      j = Type.getArgumentsAndReturnSizes(paramString3);
      localItem.intVal = j;
    }
    while (true)
    {
      this.code.put12(185, localItem.index).put11(j >> 2, 0);
      return;
      bool = false;
      break;
      label87: this.code.put12(paramInt, localItem.index);
      return;
      label102: j = i;
    }
  }

  public void visitTypeInsn(int paramInt, String paramString)
  {
    Item localItem = this.cw.newClassItem(paramString);
    this.code.put12(paramInt, localItem.index);
  }

  public void visitVarInsn(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 4) && (paramInt1 != 169))
    {
      if (paramInt1 < 54);
      for (int i = paramInt2 + (26 + (paramInt1 - 21 << 2)); ; i = paramInt2 + (59 + (paramInt1 - 54 << 2)))
      {
        this.code.putByte(i);
        return;
      }
    }
    if (paramInt2 >= 256)
    {
      this.code.putByte(196).put12(paramInt1, paramInt2);
      return;
    }
    this.code.put11(paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.asm.MethodWriter
 * JD-Core Version:    0.6.2
 */