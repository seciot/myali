.class public final Lcom/alipay/mobile/onsitepay/utils/j;
.super Ljava/lang/Object;
.source "ZXingHelper.java"


# direct methods
.method private static a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    if-nez p0, :cond_1

    .line 23
    const/4 v4, 0x0

    .line 83
    :cond_0
    :goto_0
    return-object v4

    .line 26
    :cond_1
    new-instance v4, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v4}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 31
    :try_start_0
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v13, v4

    .line 39
    :goto_1
    invoke-virtual {v13}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 40
    invoke-virtual {v13}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    .line 41
    mul-int v4, v7, v11

    new-array v5, v4, [I

    .line 42
    const/4 v4, 0x0

    move v8, v4

    :goto_2
    if-ge v8, v11, :cond_5

    .line 43
    mul-int v9, v8, v7

    .line 44
    const/4 v4, 0x0

    move v6, v4

    :goto_3
    if-ge v6, v7, :cond_4

    .line 45
    add-int v10, v9, v6

    invoke-virtual {v13, v6, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, -0x100

    :goto_4
    aput v4, v5, v10

    .line 44
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_3

    .line 34
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    move-object v13, v4

    .line 38
    goto :goto_1

    .line 37
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    goto :goto_0

    .line 45
    :cond_3
    const v4, 0xffffff

    goto :goto_4

    .line 42
    :cond_4
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_2

    .line 49
    :cond_5
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 50
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 52
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo p0, ""

    .line 54
    :cond_6
    :goto_5
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 55
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "contents = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    const/4 v5, 0x0

    move v6, v5

    .line 60
    :goto_6
    if-ge v6, v7, :cond_8

    .line 61
    const/4 v5, 0x0

    invoke-virtual {v13, v6, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 62
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_6

    .line 52
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-ge v5, v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    if-le v5, v6, :cond_6

    new-instance v5, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xc

    const-string/jumbo v8, "-"

    invoke-virtual {v5, v6, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v6, 0x8

    const-string/jumbo v8, "-"

    invoke-virtual {v5, v6, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x4

    const-string/jumbo v8, "-"

    invoke-virtual {v5, v6, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " format code "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 p0, v5

    goto :goto_5

    .line 67
    :cond_8
    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    const/4 v13, 0x0

    div-int/lit8 v5, v7, 0x1e

    sub-int v5, v11, v5

    add-int/lit8 v5, v5, -0x4

    int-to-float v14, v5

    int-to-float v15, v7

    int-to-float v0, v11

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 71
    div-int/lit8 v5, v7, 0x1e

    int-to-float v5, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 73
    mul-int/lit8 v5, v6, 0x2

    sub-int v5, v7, v5

    int-to-float v5, v5

    .line 74
    const/high16 v7, -0x100

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v5, v7

    .line 78
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v8, :cond_0

    .line 79
    add-int/lit8 v9, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 80
    int-to-float v10, v6

    int-to-float v13, v5

    mul-float/2addr v13, v7

    add-float/2addr v10, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    sub-float v13, v7, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v10, v13

    add-int/lit8 v13, v11, -0x4

    int-to-float v13, v13

    move-object/from16 v0, v17

    invoke-virtual {v12, v9, v10, v13, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/onsitepay/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZII)V

    .line 136
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {p1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 112
    if-eqz p3, :cond_2

    .line 113
    :try_start_0
    invoke-static {p0, v0, p5, p4}, Lcom/alipay/mobile/onsitepay/utils/j;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 115
    const/high16 v2, 0x42b4

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 116
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 118
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    goto :goto_0

    .line 120
    :cond_2
    :try_start_1
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v0, :cond_3

    if-le p4, p5, :cond_3

    move p4, p5

    .line 124
    :cond_3
    invoke-static {p0, v0, p4, p5}, Lcom/alipay/mobile/onsitepay/utils/j;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 126
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
