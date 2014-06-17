.class public final Lcom/alipay/mobile/alipassapp/biz/model/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->i:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->j:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->success:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "ALIPASS_TEMPLATE_NOT_FOUND"

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iput-boolean v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->j:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->success:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "ALIPASS_TEMPLATE_NOT_FOUND"

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->i:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->isShowFollow:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->a:Z

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->officialAccountId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->officialAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->cardPreviewList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->cardPreviewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iput-boolean v3, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->i:Z

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;->cardPreviewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardPreviewModel;

    iget-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardPreviewModel;->backgroundColor:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardPreviewModel;->backgroundPng:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardPreviewModel;->cardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->g:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardPreviewModel;->commonPrivilegeList:Ljava/util/List;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->h:Ljava/util/List;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardPreviewModel;->merchantName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->i:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->h:Ljava/util/List;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/d;->j:Z

    return v0
.end method
