.class public Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;
.super Landroid/support/v4/view/ViewPager;


# static fields
.field static final MAX_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field public static barCodeImg:Landroid/graphics/Bitmap;

.field private static mHandler:Landroid/os/Handler;

.field public static qcodeImg:Landroid/graphics/Bitmap;


# instance fields
.field private alipassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

.field private alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

.field private createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

.field private imageBiggerClickMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/alipassapp/ui/common/au;",
            ">;"
        }
    .end annotation
.end field

.field private mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private mContext:Landroid/content/Context;

.field private mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;

.field private mOperationView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private pagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private receiveDynamicCodeHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->qcodeImg:Landroid/graphics/Bitmap;

    sput-object v1, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->barCodeImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ad;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;B)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->imageBiggerClickMap:Ljava/util/HashMap;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/q;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/common/q;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->receiveDynamicCodeHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/common/r;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/common/r;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->imageBiggerClickMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)[Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->addOperationLog(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addOperationLog(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v4, ""

    const-string/jumbo v7, ""

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "COUPON"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v4, "20000030"

    const-string/jumbo v7, "couponDetails"

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v1, 0x2

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v1

    move-object v1, p1

    move-object/from16 v8, p3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TRAVEL"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v4, "20000021"

    const-string/jumbo v7, "travelItineraryDetails"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private initImageViews(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x5

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setPadding(IIII)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;

    aput-object v1, v2, v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;

    aget-object v2, v2, v0

    sget v3, Lcom/alipay/mobile/alipassapp/R$drawable;->guide_dot_white:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mImageViews:[Lcom/alipay/mobile/commonui/widget/APImageView;

    aget-object v2, v2, v0

    sget v3, Lcom/alipay/mobile/alipassapp/R$drawable;->guide_dot_black:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private setText(Lcom/alipay/mobile/commonui/widget/APTextView;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->coupon_dynamic_error:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBizType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TRAVEL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->travel_dynamic_error:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public refresh(Ljava/util/List;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;",
            ">;",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->imageBiggerClickMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onDestroy()V

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->setOperationFields(Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setOperationFields(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_17

    const-string/jumbo v2, "text"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_text_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOrientation(I)V

    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;->getMessage()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText;->getMessage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText$MessageText;

    move-object v2, v0

    const/4 v1, 0x4

    if-gt v3, v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v7, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_text:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->tv_label:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText$MessageText;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "\uff1a"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->tv_value:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText$MessageText;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationText$MessageText;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->tv_label:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {v5, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_text:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "barcode"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_barcode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->iv_barcode:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_barcode_altText:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/common/s;

    invoke-direct {v4, p0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/s;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;Lcom/alipay/mobile/commonui/widget/APImageView;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "qrcode"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_qrcode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->iv_qrcode:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_qrcode_altText:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessageEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string/jumbo v3, "utf-8"

    :cond_7
    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/alipay/mobile/alipassapp/ui/common/v;

    invoke-direct {v5, p0, v1, v3, v2}, Lcom/alipay/mobile/alipassapp/ui/common/v;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v2, "app"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_app:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;->getAltText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;->getAltText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->btn_app:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;->getAltText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->btn_app:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/common/ac;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ac;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationApp;)V

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v2, "url"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_app:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    :try_start_2
    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->btn_app:I

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    move-object v8, v0

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$color;->url_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(I)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "url"

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v8, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v2, "stamp"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_stamp:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :try_start_3
    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/i;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/androidquery/AQuery;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->iv_stamp:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    check-cast v2, Lcom/androidquery/AQuery;

    sget-object v4, Lcom/alipay/mobile/alipassapp/ui/common/i;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/androidquery/AQuery;->image(I)Lcom/androidquery/AbstractAQuery;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v2, "wave"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_wave:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->iv_wave:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/alipay/mobile/commonui/widget/APImageView;

    :try_start_4
    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "waveMsg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    const/16 v4, 0x10

    if-gt v3, v4, :cond_e

    const/4 v2, 0x1

    :cond_c
    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->tv_wave_altText:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/y;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wave"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/alipassapp/ui/common/y;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    const/16 v4, 0x10

    if-le v3, v4, :cond_c

    const/16 v4, 0x20

    if-gt v3, v4, :cond_c

    :try_start_5
    const-string/jumbo v2, "^[a-f1-9A-F][a-f0-9A-F]{15,31}$"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    goto :goto_3

    :cond_f
    const-string/jumbo v2, "img"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_qrcode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->iv_qrcode:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->iv_default:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APImageView;

    :try_start_6
    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getAltText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getAltText()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->tv_qrcode_altText:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getAltText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;->getImg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/alipay/mobile/alipassapp/ui/common/z;

    invoke-direct {v6, p0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/z;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;Lcom/alipay/mobile/commonui/widget/APImageView;Lcom/alipay/mobile/commonui/widget/APImageView;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_11
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dbarcode"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_barcode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->iv_barcode:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_dbarcode_msg:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->setText(Lcom/alipay/mobile/commonui/widget/APTextView;)V

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_dbarcode_msg:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_dbarcode_msg:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, ""

    const/4 v7, 0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->imageBiggerClickMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->startGetDynamicCode(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessageEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->update(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const/4 v3, 0x0

    goto :goto_4

    :cond_14
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dqrcode"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_qrcode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->iv_qrcode:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_qrcode_altText:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_dqrocde_msg:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->setText(Lcom/alipay/mobile/commonui/widget/APTextView;)V

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_dqrocde_msg:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_dqrocde_msg:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_15

    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->imageBiggerClickMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->startGetDynamicCode(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessageEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->update(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    const/4 v3, 0x0

    goto :goto_5

    :cond_16
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dwave"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$layout;->sub_alipass_operation_wave:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->iv_wave:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/common/ab;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/alipassapp/ui/common/ab;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mOperationView:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    invoke-direct {p0, p2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->initImageViews(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public setmApp(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->createDynamicCodeService:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->receiveDynamicCodeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->setHandler(Landroid/os/Handler;)V

    :cond_0
    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->alipassPayBridgeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    return-void
.end method
