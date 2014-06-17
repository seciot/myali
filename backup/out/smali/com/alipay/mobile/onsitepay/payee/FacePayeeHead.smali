.class public Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;
.super Landroid/widget/FrameLayout;
.source "FacePayeeHead.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static startNum:I


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;

.field originalHeadIcon:Landroid/graphics/Bitmap;

.field payerIsOnline:Z

.field payerName:Ljava/lang/String;

.field payer_account_name:Lcom/alipay/mobile/commonui/widget/APTextView;

.field payer_icon:Lcom/alipay/mobile/common/misc/CircularImageView;

.field payer_pay_success:Lcom/alipay/mobile/commonui/widget/APImageView;

.field successed:Z

.field userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x270f

    sput v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->startNum:I

    .line 40
    const-string/jumbo v0, "FacePayeeHead"

    sput-object v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->successed:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->b:Landroid/os/Handler;

    .line 64
    sget-object v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->TAG:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/e;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payerIsOnline:Z

    if-nez v0, :cond_2

    .line 156
    iget-object v8, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_icon:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v7, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    mul-int v4, v3, v2

    add-int/2addr v4, v0

    aget v4, v1, v4

    const/high16 v5, 0xff

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x10

    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v5, v5

    float-to-double v9, v5

    const-wide v11, 0x3fd3333333333333L

    mul-double/2addr v9, v11

    int-to-float v5, v6

    float-to-double v5, v5

    const-wide v11, 0x3fe2e147ae147ae1L

    mul-double/2addr v5, v11

    add-double/2addr v5, v9

    int-to-float v4, v4

    float-to-double v9, v4

    const-wide v11, 0x3fbc28f5c28f5c29L

    mul-double/2addr v9, v11

    add-double v4, v5, v9

    double-to-int v4, v4

    const/high16 v5, -0x100

    shl-int/lit8 v6, v4, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v4, 0x8

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    mul-int v5, v3, v2

    add-int/2addr v5, v0

    aput v4, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    :goto_2
    return-void

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_icon:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$drawable;->user_info_area_portrait_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->originalHeadIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->originalHeadIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a(Landroid/graphics/Bitmap;)V

    new-instance v4, Lcom/alipay/mobile/onsitepay/payee/v;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/onsitepay/payee/v;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V

    new-instance v7, Lcom/alipay/mobile/onsitepay/payee/x;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/onsitepay/payee/x;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V

    move-object v2, v1

    move-object v3, p1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->user_info_area_portrait_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->originalHeadIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->originalHeadIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getNum()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessed()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->successed:Z

    return v0
.end method

.method public isUsed()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a:I

    sget v1, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->startNum:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 71
    sget-object v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->TAG:Ljava/lang/String;

    .line 72
    sget v0, Lcom/alipay/mobile/onsitepay/d;->ad:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/CircularImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_icon:Lcom/alipay/mobile/common/misc/CircularImageView;

    .line 73
    sget v0, Lcom/alipay/mobile/onsitepay/d;->ac:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_account_name:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 74
    sget v0, Lcom/alipay/mobile/onsitepay/d;->an:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_pay_success:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 75
    return-void
.end method

.method protected paySuccess()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->successed:Z

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->originalHeadIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_icon:Lcom/alipay/mobile/common/misc/CircularImageView;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->originalHeadIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payer_pay_success:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput p1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a:I

    .line 223
    return-void
.end method

.method protected showPayerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    sget-object v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", payerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", headUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",payerIsOnline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",currentNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    iput p5, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->a:I

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->userId:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payerName:Ljava/lang/String;

    .line 89
    iput-boolean p4, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->payerIsOnline:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->successed:Z

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/u;

    invoke-direct {v1, p0, p3, p2}, Lcom/alipay/mobile/onsitepay/payee/u;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method
