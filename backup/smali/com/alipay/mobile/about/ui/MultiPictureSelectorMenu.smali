.class public Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;
.super Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/about/ui/AbsAlbumListActivity",
        "<",
        "Lcom/alipay/mobile/about/ui/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/alipay/mobile/about/ui/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "filter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "current_count"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bp:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/about/ui/ap;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/ui/ap;-><init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final a(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/about/ui/b/a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v0, "from"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const-string/jumbo v0, "filter"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-wide v2, v1, Lcom/alipay/mobile/about/ui/b/a;->b:J

    iget-object v4, v1, Lcom/alipay/mobile/about/ui/b/a;->e:Ljava/lang/String;

    const-string/jumbo v1, "current_count"

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/app/Activity;JLjava/lang/String;Landroid/content/Intent;Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->finish()V

    :cond_0
    return-void
.end method

.method protected final synthetic b()Landroid/widget/ListAdapter;
    .locals 3

    new-instance v0, Lcom/alipay/mobile/about/ui/a/b;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->b:Lcom/alipay/mobile/about/b/b;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/about/ui/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/alipay/mobile/about/b/b;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->e:Lcom/alipay/mobile/about/ui/a/b;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->e:Lcom/alipay/mobile/about/ui/a/b;

    return-object v0
.end method

.method protected final c()I
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->Y:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->e:Lcom/alipay/mobile/about/ui/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->e:Lcom/alipay/mobile/about/ui/a/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/a/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->b:Lcom/alipay/mobile/about/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->b:Lcom/alipay/mobile/about/b/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/b/b;->b()V

    :cond_1
    return-void
.end method
