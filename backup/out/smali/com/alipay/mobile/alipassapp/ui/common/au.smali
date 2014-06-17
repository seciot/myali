.class public Lcom/alipay/mobile/alipassapp/ui/common/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field b:Lcom/alipay/mobile/alipassapp/ui/common/ax;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:Landroid/content/Context;

.field private i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/common/au;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/au;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->b:Lcom/alipay/mobile/alipassapp/ui/common/ax;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->e:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->f:I

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->h:Landroid/content/Context;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->b:Lcom/alipay/mobile/alipassapp/ui/common/ax;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->e:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->f:I

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->e:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->b:Lcom/alipay/mobile/alipassapp/ui/common/ax;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->e:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->f:I

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->d:Z

    return-void
.end method

.method private a(Lcom/alipay/mobile/commonui/widget/APImageView;Landroid/graphics/Bitmap;II)V
    .locals 11

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x4

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "contents = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    div-int/lit8 v2, p3, 0x1e

    sub-int v2, p4, v2

    add-int/lit8 v2, v2, -0x4

    int-to-float v2, v2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    div-int/lit8 v1, p3, 0x1e

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, p3, -0x3c

    int-to-float v1, v1

    const/high16 v3, -0x100

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/high16 v8, 0x41f0

    int-to-float v9, v1

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    sub-float v9, v3, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    add-int/lit8 v9, p4, -0x4

    int-to-float v9, v9

    invoke-virtual {v0, v4, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x42b4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->i:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->image_big_show:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->oper_loading_img:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/au;->a(Lcom/alipay/mobile/commonui/widget/APImageView;Landroid/graphics/Bitmap;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->g:J

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->show_image_for_details:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->i:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->image_big_show:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->f:I

    if-nez v1, :cond_3

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->oper_loading_img:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->h:Landroid/content/Context;

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(Landroid/content/Context;)Lcom/alipay/mobile/alipassapp/ui/common/ax;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->b:Lcom/alipay/mobile/alipassapp/ui/common/ax;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->b:Lcom/alipay/mobile/alipassapp/ui/common/ax;

    sget v4, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a:I

    sget v7, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a:I

    invoke-virtual {v3, v1, v4, v7}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(Landroid/app/Activity;II)V

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    float-to-int v4, v3

    iget v3, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v8, 0x3f4ccccd

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/alipassapp/ui/common/au;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "height = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->d:Z

    if-eqz v9, :cond_6

    invoke-direct {p0, v0, v2, v5, v6}, Lcom/alipay/mobile/alipassapp/ui/common/au;->a(Lcom/alipay/mobile/commonui/widget/APImageView;Landroid/graphics/Bitmap;II)V

    iget v2, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3f19999a

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/16 v4, 0x258

    if-le v2, v4, :cond_4

    const/16 v2, 0x258

    :goto_3
    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int v4, v2, v5

    div-int/2addr v4, v6

    if-le v4, v3, :cond_5

    move v2, v3

    :goto_4
    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    :goto_5
    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/au;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u83b7\u53d6\u5c4f\u5e55\u5bbd\u5ea6\uff1a="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\u56fe\u7247\u7684\u663e\u793a\u5bbd\u4e3a="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\u56fe\u7247\u7684\u663e\u793a\u9ad8\u4e3a="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/app/Dialog;

    sget v3, Lcom/alipay/mobile/alipassapp/R$style;->details_show_image_dialog:I

    invoke-direct {v2, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->i:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/common/av;

    invoke-direct {v3, p0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/av;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/au;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/aw;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/aw;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/au;Lcom/alipay/mobile/framework/app/ui/BaseActivity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/androidquery/AQuery;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/au;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/androidquery/AQuery;->getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    iget v2, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3f19999a

    mul-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_3

    :cond_5
    mul-int/2addr v2, v5

    div-int/2addr v2, v6

    goto :goto_4

    :cond_6
    const/16 v2, 0x1f4

    if-le v4, v2, :cond_7

    const/16 v2, 0x1f4

    :goto_6
    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v2, v6

    div-int/2addr v2, v5

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v2, v3, :cond_2

    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int v2, v5, v3

    div-int/2addr v2, v6

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    :cond_7
    move v2, v4

    goto :goto_6

    :cond_8
    move-object v2, v1

    goto/16 :goto_2
.end method
