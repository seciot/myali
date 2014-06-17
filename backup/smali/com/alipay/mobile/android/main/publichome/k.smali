.class final Lcom/alipay/mobile/android/main/publichome/k;
.super Ljava/lang/Object;
.source "PublicHomeView_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/k;->b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/k;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/k;->b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/k;->a:Ljava/util/List;

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->reloadPublichomeList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$501(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Ljava/util/List;)V

    .line 180
    return-void
.end method
