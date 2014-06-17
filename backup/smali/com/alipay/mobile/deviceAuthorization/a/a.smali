.class public final Lcom/alipay/mobile/deviceAuthorization/a/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->b:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->d:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->c:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/a/a;->a(I)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aU:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aS:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->d:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    const-string/jumbo v1, "owner"

    const-string/jumbo v2, "group"

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/a/a;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;->getTargetLogo()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/deviceAuthorization/a/b;

    invoke-direct {v4, p0, p2}, Lcom/alipay/mobile/deviceAuthorization/a/b;-><init>(Lcom/alipay/mobile/deviceAuthorization/a/a;Landroid/view/View;)V

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    return-object p2
.end method
