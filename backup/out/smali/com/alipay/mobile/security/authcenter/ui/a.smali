.class public Lcom/alipay/mobile/security/authcenter/ui/a;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/authcenter/ui/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field b:Lcom/alipay/mobile/security/authcenter/ui/login/v;

.field c:Landroid/content/Context;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected e:Landroid/view/LayoutInflater;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/alipay/mobile/security/authcenter/ui/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/security/authcenter/ui/a",
            "<TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;ILjava/util/List;)V
    .locals 2
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->b:Lcom/alipay/mobile/security/authcenter/ui/login/v;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->g:Ljava/lang/Object;

    iput v1, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->k:Z

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->e:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->i:I

    iput p3, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->h:I

    iput-object p4, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->f:Ljava/util/List;

    iput v1, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->j:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/authcenter/ui/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->e:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ct:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hideaccount"

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->i:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->l:Lcom/alipay/mobile/security/authcenter/ui/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/a$a;-><init>(Lcom/alipay/mobile/security/authcenter/ui/a;B)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->l:Lcom/alipay/mobile/security/authcenter/ui/a$a;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->l:Lcom/alipay/mobile/security/authcenter/ui/a$a;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->h:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a;->k:Z

    return-void
.end method
