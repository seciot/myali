.class Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;

    #calls: Lcom/alipay/mobile/common/ui/SelectCityActivity;->loadCitys()V
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->access$101(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V

    return-void
.end method
