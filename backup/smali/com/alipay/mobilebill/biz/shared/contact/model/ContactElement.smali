.class public Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElement;
.super Ljava/lang/Object;


# instance fields
.field public behavior:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElementBehavior;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBehavior()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElementBehavior;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElement;->behavior:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElement;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBehavior(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElementBehavior;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElement;->behavior:Ljava/util/List;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElement;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactElement;->type:Ljava/lang/String;

    return-void
.end method
