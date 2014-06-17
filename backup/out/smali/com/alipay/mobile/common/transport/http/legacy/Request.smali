.class public Lcom/alipay/mobile/common/transport/http/legacy/Request;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/legacy/Request;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPostData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/legacy/Request;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRelAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/legacy/Request;->c:Z

    return v0
.end method

.method public getUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/legacy/Request;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/legacy/Request;->b:Ljava/lang/String;

    return-void
.end method

.method public setRelAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/legacy/Request;->c:Z

    return-void
.end method
