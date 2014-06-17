.class public abstract Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/ListAdapter;",
        ">",
        "Lcom/alipay/mobile/framework/app/ui/BaseActivity;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;

.field protected b:Lcom/alipay/mobile/about/b/b;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/about/ui/b/a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->c:Ljava/util/List;

    new-instance v0, Lcom/alipay/mobile/about/ui/m;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/ui/m;-><init>(Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method

.method protected abstract b()Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract c()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->a()V

    new-instance v0, Lcom/alipay/mobile/about/b/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->b:Lcom/alipay/mobile/about/b/b;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->co:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->b()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->c:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/alipay/mobile/about/b/a;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
