.class final Lcom/alipay/mobile/about/ui/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/mobile/about/ui/ai;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/ai;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/aj;->b:Lcom/alipay/mobile/about/ui/ai;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/aj;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/aj;->b:Lcom/alipay/mobile/about/ui/ai;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->b(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/aj;->b:Lcom/alipay/mobile/about/ui/ai;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->b(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/ui/aj;->b:Lcom/alipay/mobile/about/ui/ai;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->c(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/aj;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/aj;->b:Lcom/alipay/mobile/about/ui/ai;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/ai;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->d(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->notifyDataSetChanged()V

    return-void
.end method
