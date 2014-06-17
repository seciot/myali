.class Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/logagent/StorageManager;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/logagent/StorageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logagent/StorageManager;Lcom/alipay/mobile/common/logagent/StorageManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;-><init>(Lcom/alipay/mobile/common/logagent/StorageManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    #getter for: Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    invoke-static {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$000(Lcom/alipay/mobile/common/logagent/StorageManager;)Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    #getter for: Lcom/alipay/mobile/common/logagent/StorageManager;->l:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$100(Lcom/alipay/mobile/common/logagent/StorageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$200(Lcom/alipay/mobile/common/logagent/StorageManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->ERROR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    #getter for: Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    invoke-static {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$000(Lcom/alipay/mobile/common/logagent/StorageManager;)Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->EXCEPTION:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    #getter for: Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    invoke-static {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$000(Lcom/alipay/mobile/common/logagent/StorageManager;)Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$300(Lcom/alipay/mobile/common/logagent/StorageManager;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    const-string/jumbo v1, "D-VM,%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$400(Lcom/alipay/mobile/common/logagent/StorageManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->AUTO_CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    #getter for: Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    invoke-static {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$000(Lcom/alipay/mobile/common/logagent/StorageManager;)Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v1

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->AUTO_OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    #getter for: Lcom/alipay/mobile/common/logagent/StorageManager;->k:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    invoke-static {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$000(Lcom/alipay/mobile/common/logagent/StorageManager;)Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v1

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    const-string/jumbo v1, "D-VM,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$500(Lcom/alipay/mobile/common/logagent/StorageManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/StorageManager$WriteLogThread;->this$0:Lcom/alipay/mobile/common/logagent/StorageManager;

    const-string/jumbo v1, "D-VM,%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->access$200(Lcom/alipay/mobile/common/logagent/StorageManager;Ljava/lang/String;)V

    goto :goto_0
.end method
