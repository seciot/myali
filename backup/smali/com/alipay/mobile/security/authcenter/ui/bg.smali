.class public final Lcom/alipay/mobile/security/authcenter/ui/bg;
.super Lcom/alipay/mobile/security/authcenter/ui/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/security/authcenter/ui/a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/security/authcenter/ui/a;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/bg;->e:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ct:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/bg;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
