.class public Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;
.super Landroid/widget/FrameLayout;
.source "NearbyFriend.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/common/misc/CircularImageView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Landroid/os/Handler;

.field userInfo:Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "SendSoundFriend"

    sput-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->c:Landroid/os/Handler;

    .line 69
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->TAG:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/e;->p:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;)Lcom/alipay/mobile/common/misc/CircularImageView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->a:Lcom/alipay/mobile/common/misc/CircularImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 76
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->TAG:Ljava/lang/String;

    .line 77
    sget v0, Lcom/alipay/mobile/onsitepay/d;->T:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/CircularImageView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->a:Lcom/alipay/mobile/common/misc/CircularImageView;

    .line 78
    sget v0, Lcom/alipay/mobile/onsitepay/d;->S:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 79
    return-void
.end method

.method public showNearbyInfo(Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 82
    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->headImageUrl:Ljava/lang/String;

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

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->a:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/alipay/mobile/base/commonbiz/R$drawable;->user_info_area_portrait_default:I

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v4, Lcom/alipay/mobile/onsitepay/payer/sound/b;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/b;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;)V

    new-instance v7, Lcom/alipay/mobile/onsitepay/payer/sound/d;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/d;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;)V

    move-object v2, v1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->userInfo:Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;

    .line 84
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showNearbyInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v8}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->setVisibility(I)V

    .line 87
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->name:Ljava/lang/String;

    .line 88
    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->a:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$drawable;->user_info_area_portrait_default:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/b;->b:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    return-void
.end method
