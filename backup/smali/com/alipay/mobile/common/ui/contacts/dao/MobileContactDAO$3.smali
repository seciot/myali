.class Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->h:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$200(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->k:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$300(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->k:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$300(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->l:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$400(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->k:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$300(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->l:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$400(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    #setter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->j:J
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$502(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;J)J

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->j:J
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$500(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;->latestMatchTime:J

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchRequest;->tid:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->h:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$200(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->executeBackground(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
