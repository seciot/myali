.class final Lcom/alipay/mobile/android/main/publichome/h;
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
    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/h;->b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/h;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/h;->b:Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/h;->a:Ljava/util/List;

    #calls: Lcom/alipay/mobile/android/main/publichome/PublicHomeView;->refreshPublichomeItems(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;->access$201(Lcom/alipay/mobile/android/main/publichome/PublicHomeView_;Ljava/util/List;)V

    .line 138
    return-void
.end method
