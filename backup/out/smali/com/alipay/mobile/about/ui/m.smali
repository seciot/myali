.class final Lcom/alipay/mobile/about/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/m;->a:Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/m;->a:Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/about/ui/AbsAlbumListActivity;->a(I)V

    return-void
.end method
