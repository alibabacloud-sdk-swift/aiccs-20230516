import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddBlacklistRequest : Tea.TeaModel {
    public var expiredDay: String?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expiredDay != nil {
            map["ExpiredDay"] = self.expiredDay!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpiredDay") {
            self.expiredDay = dict["ExpiredDay"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! [String]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AddBlacklistShrinkRequest : Tea.TeaModel {
    public var expiredDay: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expiredDay != nil {
            map["ExpiredDay"] = self.expiredDay!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpiredDay") {
            self.expiredDay = dict["ExpiredDay"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbersShrink = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AddBlacklistResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UnHandleNumbers") {
                self.unHandleNumbers = dict["UnHandleNumbers"] as! [String]
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: AddBlacklistResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = AddBlacklistResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class AddBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBlacklistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddBlacklistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTaskRequest : Tea.TeaModel {
    public class CallTimeList : Tea.TeaModel {
        public var callTime: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callTime != nil {
                map["CallTime"] = self.callTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallTime") {
                self.callTime = dict["CallTime"] as! [String]
            }
        }
    }
    public class SendSmsPlan : Tea.TeaModel {
        public var intentTags: [String]?

        public var smsTemplateId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intentTags != nil {
                map["IntentTags"] = self.intentTags!
            }
            if self.smsTemplateId != nil {
                map["SmsTemplateId"] = self.smsTemplateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IntentTags") {
                self.intentTags = dict["IntentTags"] as! [String]
            }
            if dict.keys.contains("SmsTemplateId") {
                self.smsTemplateId = dict["SmsTemplateId"] as! Int64
            }
        }
    }
    public var callTimeList: [AddTaskRequest.CallTimeList]?

    public var callbackUrl: String?

    public var flashSmsTemplateId: Int64?

    public var flashSmsType: Int64?

    public var maxConcurrency: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var playSleepVal: Int64?

    public var playTimes: Int64?

    public var recallType: Int64?

    public var recordPath: String?

    public var repeatCount: Int64?

    public var repeatInterval: Int64?

    public var repeatReason: [String]?

    public var repeatTimes: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendSmsPlan: [AddTaskRequest.SendSmsPlan]?

    public var startTime: String?

    public var taskType: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callTimeList != nil {
            var tmp : [Any] = []
            for k in self.callTimeList! {
                tmp.append(k.toMap())
            }
            map["CallTimeList"] = tmp
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.flashSmsTemplateId != nil {
            map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
        }
        if self.flashSmsType != nil {
            map["FlashSmsType"] = self.flashSmsType!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playSleepVal != nil {
            map["PlaySleepVal"] = self.playSleepVal!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.recordPath != nil {
            map["RecordPath"] = self.recordPath!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatInterval != nil {
            map["RepeatInterval"] = self.repeatInterval!
        }
        if self.repeatReason != nil {
            map["RepeatReason"] = self.repeatReason!
        }
        if self.repeatTimes != nil {
            map["RepeatTimes"] = self.repeatTimes!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendSmsPlan != nil {
            var tmp : [Any] = []
            for k in self.sendSmsPlan! {
                tmp.append(k.toMap())
            }
            map["SendSmsPlan"] = tmp
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallTimeList") {
            var tmp : [AddTaskRequest.CallTimeList] = []
            for v in dict["CallTimeList"] as! [Any] {
                var model = AddTaskRequest.CallTimeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.callTimeList = tmp
        }
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("FlashSmsTemplateId") {
            self.flashSmsTemplateId = dict["FlashSmsTemplateId"] as! Int64
        }
        if dict.keys.contains("FlashSmsType") {
            self.flashSmsType = dict["FlashSmsType"] as! Int64
        }
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlaySleepVal") {
            self.playSleepVal = dict["PlaySleepVal"] as! Int64
        }
        if dict.keys.contains("PlayTimes") {
            self.playTimes = dict["PlayTimes"] as! Int64
        }
        if dict.keys.contains("RecallType") {
            self.recallType = dict["RecallType"] as! Int64
        }
        if dict.keys.contains("RecordPath") {
            self.recordPath = dict["RecordPath"] as! String
        }
        if dict.keys.contains("RepeatCount") {
            self.repeatCount = dict["RepeatCount"] as! Int64
        }
        if dict.keys.contains("RepeatInterval") {
            self.repeatInterval = dict["RepeatInterval"] as! Int64
        }
        if dict.keys.contains("RepeatReason") {
            self.repeatReason = dict["RepeatReason"] as! [String]
        }
        if dict.keys.contains("RepeatTimes") {
            self.repeatTimes = dict["RepeatTimes"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendSmsPlan") {
            var tmp : [AddTaskRequest.SendSmsPlan] = []
            for v in dict["SendSmsPlan"] as! [Any] {
                var model = AddTaskRequest.SendSmsPlan()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sendSmsPlan = tmp
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! Int64
        }
    }
}

public class AddTaskShrinkRequest : Tea.TeaModel {
    public var callTimeListShrink: String?

    public var callbackUrl: String?

    public var flashSmsTemplateId: Int64?

    public var flashSmsType: Int64?

    public var maxConcurrency: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var playSleepVal: Int64?

    public var playTimes: Int64?

    public var recallType: Int64?

    public var recordPath: String?

    public var repeatCount: Int64?

    public var repeatInterval: Int64?

    public var repeatReasonShrink: String?

    public var repeatTimesShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendSmsPlanShrink: String?

    public var startTime: String?

    public var taskType: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callTimeListShrink != nil {
            map["CallTimeList"] = self.callTimeListShrink!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.flashSmsTemplateId != nil {
            map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
        }
        if self.flashSmsType != nil {
            map["FlashSmsType"] = self.flashSmsType!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playSleepVal != nil {
            map["PlaySleepVal"] = self.playSleepVal!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.recordPath != nil {
            map["RecordPath"] = self.recordPath!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatInterval != nil {
            map["RepeatInterval"] = self.repeatInterval!
        }
        if self.repeatReasonShrink != nil {
            map["RepeatReason"] = self.repeatReasonShrink!
        }
        if self.repeatTimesShrink != nil {
            map["RepeatTimes"] = self.repeatTimesShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendSmsPlanShrink != nil {
            map["SendSmsPlan"] = self.sendSmsPlanShrink!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallTimeList") {
            self.callTimeListShrink = dict["CallTimeList"] as! String
        }
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("FlashSmsTemplateId") {
            self.flashSmsTemplateId = dict["FlashSmsTemplateId"] as! Int64
        }
        if dict.keys.contains("FlashSmsType") {
            self.flashSmsType = dict["FlashSmsType"] as! Int64
        }
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlaySleepVal") {
            self.playSleepVal = dict["PlaySleepVal"] as! Int64
        }
        if dict.keys.contains("PlayTimes") {
            self.playTimes = dict["PlayTimes"] as! Int64
        }
        if dict.keys.contains("RecallType") {
            self.recallType = dict["RecallType"] as! Int64
        }
        if dict.keys.contains("RecordPath") {
            self.recordPath = dict["RecordPath"] as! String
        }
        if dict.keys.contains("RepeatCount") {
            self.repeatCount = dict["RepeatCount"] as! Int64
        }
        if dict.keys.contains("RepeatInterval") {
            self.repeatInterval = dict["RepeatInterval"] as! Int64
        }
        if dict.keys.contains("RepeatReason") {
            self.repeatReasonShrink = dict["RepeatReason"] as! String
        }
        if dict.keys.contains("RepeatTimes") {
            self.repeatTimesShrink = dict["RepeatTimes"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendSmsPlan") {
            self.sendSmsPlanShrink = dict["SendSmsPlan"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! Int64
        }
    }
}

public class AddTaskResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: AddTaskResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = AddTaskResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class AddTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AgentCancelCallRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentId") {
            self.agentId = dict["AgentId"] as! Int64
        }
        if dict.keys.contains("AgentTag") {
            self.agentTag = dict["AgentTag"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! [String]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
    }
}

public class AgentCancelCallShrinkRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentId") {
            self.agentId = dict["AgentId"] as! Int64
        }
        if dict.keys.contains("AgentTag") {
            self.agentTag = dict["AgentTag"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbersShrink = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class AgentCancelCallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UnHandleNumbers") {
                self.unHandleNumbers = dict["UnHandleNumbers"] as! [String]
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: AgentCancelCallResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = AgentCancelCallResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class AgentCancelCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentCancelCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AgentCancelCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AgentRecoverCallRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var beginImportTime: String?

    public var endImportTime: String?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.beginImportTime != nil {
            map["BeginImportTime"] = self.beginImportTime!
        }
        if self.endImportTime != nil {
            map["EndImportTime"] = self.endImportTime!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentId") {
            self.agentId = dict["AgentId"] as! Int64
        }
        if dict.keys.contains("AgentTag") {
            self.agentTag = dict["AgentTag"] as! String
        }
        if dict.keys.contains("BeginImportTime") {
            self.beginImportTime = dict["BeginImportTime"] as! String
        }
        if dict.keys.contains("EndImportTime") {
            self.endImportTime = dict["EndImportTime"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! [String]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
    }
}

public class AgentRecoverCallShrinkRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var beginImportTime: String?

    public var endImportTime: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.beginImportTime != nil {
            map["BeginImportTime"] = self.beginImportTime!
        }
        if self.endImportTime != nil {
            map["EndImportTime"] = self.endImportTime!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentId") {
            self.agentId = dict["AgentId"] as! Int64
        }
        if dict.keys.contains("AgentTag") {
            self.agentTag = dict["AgentTag"] as! String
        }
        if dict.keys.contains("BeginImportTime") {
            self.beginImportTime = dict["BeginImportTime"] as! String
        }
        if dict.keys.contains("EndImportTime") {
            self.endImportTime = dict["EndImportTime"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbersShrink = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class AgentRecoverCallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UnHandleNumbers") {
                self.unHandleNumbers = dict["UnHandleNumbers"] as! [String]
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: AgentRecoverCallResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = AgentRecoverCallResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class AgentRecoverCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRecoverCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AgentRecoverCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetailsRequest : Tea.TeaModel {
    public var batchId: Int64?

    public var endTime: String?

    public var numberStatus: Int64?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.numberStatus != nil {
            map["NumberStatus"] = self.numberStatus!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchId") {
            self.batchId = dict["BatchId"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("NumberStatus") {
            self.numberStatus = dict["NumberStatus"] as! Int64
        }
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! [String]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class DetailsShrinkRequest : Tea.TeaModel {
    public var batchId: Int64?

    public var endTime: String?

    public var numberStatus: Int64?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.numberStatus != nil {
            map["NumberStatus"] = self.numberStatus!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchId") {
            self.batchId = dict["BatchId"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("NumberStatus") {
            self.numberStatus = dict["NumberStatus"] as! Int64
        }
        if dict.keys.contains("Numbers") {
            self.numbersShrink = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class DetailsResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var batchId: Int64?

            public var callDesc: String?

            public var callId: String?

            public var callStatus: Int64?

            public var callType: Int64?

            public var importTime: String?

            public var interceptReason: String?

            public var number: String?

            public var numberDesc: String?

            public var numberMD5: String?

            public var numberStatus: Int64?

            public var tag: String?

            public var taskId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.batchId != nil {
                    map["BatchId"] = self.batchId!
                }
                if self.callDesc != nil {
                    map["CallDesc"] = self.callDesc!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callStatus != nil {
                    map["CallStatus"] = self.callStatus!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.importTime != nil {
                    map["ImportTime"] = self.importTime!
                }
                if self.interceptReason != nil {
                    map["InterceptReason"] = self.interceptReason!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.numberDesc != nil {
                    map["NumberDesc"] = self.numberDesc!
                }
                if self.numberMD5 != nil {
                    map["NumberMD5"] = self.numberMD5!
                }
                if self.numberStatus != nil {
                    map["NumberStatus"] = self.numberStatus!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BatchId") {
                    self.batchId = dict["BatchId"] as! Int64
                }
                if dict.keys.contains("CallDesc") {
                    self.callDesc = dict["CallDesc"] as! String
                }
                if dict.keys.contains("CallId") {
                    self.callId = dict["CallId"] as! String
                }
                if dict.keys.contains("CallStatus") {
                    self.callStatus = dict["CallStatus"] as! Int64
                }
                if dict.keys.contains("CallType") {
                    self.callType = dict["CallType"] as! Int64
                }
                if dict.keys.contains("ImportTime") {
                    self.importTime = dict["ImportTime"] as! String
                }
                if dict.keys.contains("InterceptReason") {
                    self.interceptReason = dict["InterceptReason"] as! String
                }
                if dict.keys.contains("Number") {
                    self.number = dict["Number"] as! String
                }
                if dict.keys.contains("NumberDesc") {
                    self.numberDesc = dict["NumberDesc"] as! String
                }
                if dict.keys.contains("NumberMD5") {
                    self.numberMD5 = dict["NumberMD5"] as! String
                }
                if dict.keys.contains("NumberStatus") {
                    self.numberStatus = dict["NumberStatus"] as! Int64
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! Int64
                }
            }
        }
        public var list: [DetailsResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                var tmp : [DetailsResponseBody.Model.List] = []
                for v in dict["List"] as! [Any] {
                    var model = DetailsResponseBody.Model.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("TotalPage") {
                self.totalPage = dict["TotalPage"] as! Double
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: DetailsResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = DetailsResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class DetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditTaskRequest : Tea.TeaModel {
    public class CallTimeList : Tea.TeaModel {
        public var callTime: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callTime != nil {
                map["CallTime"] = self.callTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallTime") {
                self.callTime = dict["CallTime"] as! [String]
            }
        }
    }
    public class SendSmsPlan : Tea.TeaModel {
        public var intentTags: [String]?

        public var smsTemplateId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intentTags != nil {
                map["IntentTags"] = self.intentTags!
            }
            if self.smsTemplateId != nil {
                map["SmsTemplateId"] = self.smsTemplateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IntentTags") {
                self.intentTags = dict["IntentTags"] as! [String]
            }
            if dict.keys.contains("SmsTemplateId") {
                self.smsTemplateId = dict["SmsTemplateId"] as! Int64
            }
        }
    }
    public var callTimeList: [EditTaskRequest.CallTimeList]?

    public var callbackUrl: String?

    public var flashSmsTemplateId: Int64?

    public var flashSmsType: Int64?

    public var maxConcurrency: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var playSleepVal: Int64?

    public var playTimes: Int64?

    public var recallType: Int64?

    public var recordPath: String?

    public var repeatCount: Int64?

    public var repeatInterval: Int64?

    public var repeatReason: [Int64]?

    public var repeatTimes: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendSmsPlan: [EditTaskRequest.SendSmsPlan]?

    public var status: Int64?

    public var taskId: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callTimeList != nil {
            var tmp : [Any] = []
            for k in self.callTimeList! {
                tmp.append(k.toMap())
            }
            map["CallTimeList"] = tmp
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.flashSmsTemplateId != nil {
            map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
        }
        if self.flashSmsType != nil {
            map["FlashSmsType"] = self.flashSmsType!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playSleepVal != nil {
            map["PlaySleepVal"] = self.playSleepVal!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.recordPath != nil {
            map["RecordPath"] = self.recordPath!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatInterval != nil {
            map["RepeatInterval"] = self.repeatInterval!
        }
        if self.repeatReason != nil {
            map["RepeatReason"] = self.repeatReason!
        }
        if self.repeatTimes != nil {
            map["RepeatTimes"] = self.repeatTimes!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendSmsPlan != nil {
            var tmp : [Any] = []
            for k in self.sendSmsPlan! {
                tmp.append(k.toMap())
            }
            map["SendSmsPlan"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallTimeList") {
            var tmp : [EditTaskRequest.CallTimeList] = []
            for v in dict["CallTimeList"] as! [Any] {
                var model = EditTaskRequest.CallTimeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.callTimeList = tmp
        }
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("FlashSmsTemplateId") {
            self.flashSmsTemplateId = dict["FlashSmsTemplateId"] as! Int64
        }
        if dict.keys.contains("FlashSmsType") {
            self.flashSmsType = dict["FlashSmsType"] as! Int64
        }
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlaySleepVal") {
            self.playSleepVal = dict["PlaySleepVal"] as! Int64
        }
        if dict.keys.contains("PlayTimes") {
            self.playTimes = dict["PlayTimes"] as! Int64
        }
        if dict.keys.contains("RecallType") {
            self.recallType = dict["RecallType"] as! Int64
        }
        if dict.keys.contains("RecordPath") {
            self.recordPath = dict["RecordPath"] as! String
        }
        if dict.keys.contains("RepeatCount") {
            self.repeatCount = dict["RepeatCount"] as! Int64
        }
        if dict.keys.contains("RepeatInterval") {
            self.repeatInterval = dict["RepeatInterval"] as! Int64
        }
        if dict.keys.contains("RepeatReason") {
            self.repeatReason = dict["RepeatReason"] as! [Int64]
        }
        if dict.keys.contains("RepeatTimes") {
            self.repeatTimes = dict["RepeatTimes"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendSmsPlan") {
            var tmp : [EditTaskRequest.SendSmsPlan] = []
            for v in dict["SendSmsPlan"] as! [Any] {
                var model = EditTaskRequest.SendSmsPlan()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sendSmsPlan = tmp
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! Int64
        }
    }
}

public class EditTaskShrinkRequest : Tea.TeaModel {
    public var callTimeListShrink: String?

    public var callbackUrl: String?

    public var flashSmsTemplateId: Int64?

    public var flashSmsType: Int64?

    public var maxConcurrency: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var playSleepVal: Int64?

    public var playTimes: Int64?

    public var recallType: Int64?

    public var recordPath: String?

    public var repeatCount: Int64?

    public var repeatInterval: Int64?

    public var repeatReasonShrink: String?

    public var repeatTimesShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendSmsPlanShrink: String?

    public var status: Int64?

    public var taskId: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callTimeListShrink != nil {
            map["CallTimeList"] = self.callTimeListShrink!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.flashSmsTemplateId != nil {
            map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
        }
        if self.flashSmsType != nil {
            map["FlashSmsType"] = self.flashSmsType!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playSleepVal != nil {
            map["PlaySleepVal"] = self.playSleepVal!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.recordPath != nil {
            map["RecordPath"] = self.recordPath!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatInterval != nil {
            map["RepeatInterval"] = self.repeatInterval!
        }
        if self.repeatReasonShrink != nil {
            map["RepeatReason"] = self.repeatReasonShrink!
        }
        if self.repeatTimesShrink != nil {
            map["RepeatTimes"] = self.repeatTimesShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendSmsPlanShrink != nil {
            map["SendSmsPlan"] = self.sendSmsPlanShrink!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallTimeList") {
            self.callTimeListShrink = dict["CallTimeList"] as! String
        }
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("FlashSmsTemplateId") {
            self.flashSmsTemplateId = dict["FlashSmsTemplateId"] as! Int64
        }
        if dict.keys.contains("FlashSmsType") {
            self.flashSmsType = dict["FlashSmsType"] as! Int64
        }
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlaySleepVal") {
            self.playSleepVal = dict["PlaySleepVal"] as! Int64
        }
        if dict.keys.contains("PlayTimes") {
            self.playTimes = dict["PlayTimes"] as! Int64
        }
        if dict.keys.contains("RecallType") {
            self.recallType = dict["RecallType"] as! Int64
        }
        if dict.keys.contains("RecordPath") {
            self.recordPath = dict["RecordPath"] as! String
        }
        if dict.keys.contains("RepeatCount") {
            self.repeatCount = dict["RepeatCount"] as! Int64
        }
        if dict.keys.contains("RepeatInterval") {
            self.repeatInterval = dict["RepeatInterval"] as! Int64
        }
        if dict.keys.contains("RepeatReason") {
            self.repeatReasonShrink = dict["RepeatReason"] as! String
        }
        if dict.keys.contains("RepeatTimes") {
            self.repeatTimesShrink = dict["RepeatTimes"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendSmsPlan") {
            self.sendSmsPlanShrink = dict["SendSmsPlan"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! Int64
        }
    }
}

public class EditTaskResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: EditTaskResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = EditTaskResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class EditTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EditTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportNumberRequest : Tea.TeaModel {
    public class Customers : Tea.TeaModel {
        public var clientUrl: String?

        public var number: String?

        public var numberMD5: String?

        public var properties: [String: Any]?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientUrl != nil {
                map["ClientUrl"] = self.clientUrl!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.numberMD5 != nil {
                map["NumberMD5"] = self.numberMD5!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientUrl") {
                self.clientUrl = dict["ClientUrl"] as! String
            }
            if dict.keys.contains("Number") {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("NumberMD5") {
                self.numberMD5 = dict["NumberMD5"] as! String
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! [String: Any]
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var customers: [ImportNumberRequest.Customers]?

    public var failReturn: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customers != nil {
            var tmp : [Any] = []
            for k in self.customers! {
                tmp.append(k.toMap())
            }
            map["Customers"] = tmp
        }
        if self.failReturn != nil {
            map["FailReturn"] = self.failReturn!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Customers") {
            var tmp : [ImportNumberRequest.Customers] = []
            for v in dict["Customers"] as! [Any] {
                var model = ImportNumberRequest.Customers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customers = tmp
        }
        if dict.keys.contains("FailReturn") {
            self.failReturn = dict["FailReturn"] as! Int64
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class ImportNumberShrinkRequest : Tea.TeaModel {
    public var customersShrink: String?

    public var failReturn: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customersShrink != nil {
            map["Customers"] = self.customersShrink!
        }
        if self.failReturn != nil {
            map["FailReturn"] = self.failReturn!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Customers") {
            self.customersShrink = dict["Customers"] as! String
        }
        if dict.keys.contains("FailReturn") {
            self.failReturn = dict["FailReturn"] as! Int64
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class ImportNumberResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var batchId: Int64?

        public var code: Int64?

        public var data: String?

        public var importNum: Int64?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["BatchId"] = self.batchId!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.importNum != nil {
                map["ImportNum"] = self.importNum!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchId") {
                self.batchId = dict["BatchId"] as! Int64
            }
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("ImportNum") {
                self.importNum = dict["ImportNum"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: ImportNumberResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = ImportNumberResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class ImportNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ImportNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportNumberV2Request : Tea.TeaModel {
    public class Customers : Tea.TeaModel {
        public var clientUrl: String?

        public var number: String?

        public var numberMD5: String?

        public var properties: [String: Any]?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientUrl != nil {
                map["ClientUrl"] = self.clientUrl!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.numberMD5 != nil {
                map["NumberMD5"] = self.numberMD5!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientUrl") {
                self.clientUrl = dict["ClientUrl"] as! String
            }
            if dict.keys.contains("Number") {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("NumberMD5") {
                self.numberMD5 = dict["NumberMD5"] as! String
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! [String: Any]
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var customers: [ImportNumberV2Request.Customers]?

    public var failReturn: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customers != nil {
            var tmp : [Any] = []
            for k in self.customers! {
                tmp.append(k.toMap())
            }
            map["Customers"] = tmp
        }
        if self.failReturn != nil {
            map["FailReturn"] = self.failReturn!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Customers") {
            var tmp : [ImportNumberV2Request.Customers] = []
            for v in dict["Customers"] as! [Any] {
                var model = ImportNumberV2Request.Customers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customers = tmp
        }
        if dict.keys.contains("FailReturn") {
            self.failReturn = dict["FailReturn"] as! Int64
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class ImportNumberV2ShrinkRequest : Tea.TeaModel {
    public var customersShrink: String?

    public var failReturn: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customersShrink != nil {
            map["Customers"] = self.customersShrink!
        }
        if self.failReturn != nil {
            map["FailReturn"] = self.failReturn!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Customers") {
            self.customersShrink = dict["Customers"] as! String
        }
        if dict.keys.contains("FailReturn") {
            self.failReturn = dict["FailReturn"] as! Int64
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class ImportNumberV2ResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var batchId: Int64?

        public var code: Int64?

        public var data: String?

        public var importNum: Int64?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["BatchId"] = self.batchId!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.importNum != nil {
                map["ImportNum"] = self.importNum!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchId") {
                self.batchId = dict["BatchId"] as! Int64
            }
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("ImportNum") {
                self.importNum = dict["ImportNum"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: ImportNumberV2ResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = ImportNumberV2ResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class ImportNumberV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportNumberV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ImportNumberV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PageRequest : Tea.TeaModel {
    public var numbers: [String]?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! [String]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PageShrinkRequest : Tea.TeaModel {
    public var numbersShrink: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Numbers") {
            self.numbersShrink = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PageResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var createTime: String?

            public var expirationTime: String?

            public var number: String?

            public var numberMD5: String?

            public var remark: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.expirationTime != nil {
                    map["ExpirationTime"] = self.expirationTime!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.numberMD5 != nil {
                    map["NumberMD5"] = self.numberMD5!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ExpirationTime") {
                    self.expirationTime = dict["ExpirationTime"] as! String
                }
                if dict.keys.contains("Number") {
                    self.number = dict["Number"] as! String
                }
                if dict.keys.contains("NumberMD5") {
                    self.numberMD5 = dict["NumberMD5"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
            }
        }
        public var list: [PageResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                var tmp : [PageResponseBody.Model.List] = []
                for v in dict["List"] as! [Any] {
                    var model = PageResponseBody.Model.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("TotalPage") {
                self.totalPage = dict["TotalPage"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: PageResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = PageResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class PageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SmsTemplateCreateRequest : Tea.TeaModel {
    public var content: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sign: String?

    public var smsType: Int64?

    public var templateName: String?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.smsType != nil {
            map["SmsType"] = self.smsType!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Sign") {
            self.sign = dict["Sign"] as! String
        }
        if dict.keys.contains("SmsType") {
            self.smsType = dict["SmsType"] as! Int64
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! Int64
        }
    }
}

public class SmsTemplateCreateResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var model: String?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class SmsTemplateCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmsTemplateCreateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SmsTemplateCreateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SmsTemplatePageListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sign: String?

    public var smsType: Int64?

    public var status: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.smsType != nil {
            map["SmsType"] = self.smsType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Sign") {
            self.sign = dict["Sign"] as! String
        }
        if dict.keys.contains("SmsType") {
            self.smsType = dict["SmsType"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! Int64
        }
    }
}

public class SmsTemplatePageListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var content: String?

            public var createTime: String?

            public var properties: String?

            public var shortUrlTaskId: Int64?

            public var sign: String?

            public var smsType: String?

            public var status: Int64?

            public var templateId: Int64?

            public var templateName: String?

            public var templateType: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.shortUrlTaskId != nil {
                    map["ShortUrlTaskId"] = self.shortUrlTaskId!
                }
                if self.sign != nil {
                    map["Sign"] = self.sign!
                }
                if self.smsType != nil {
                    map["SmsType"] = self.smsType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                if self.templateType != nil {
                    map["TemplateType"] = self.templateType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Properties") {
                    self.properties = dict["Properties"] as! String
                }
                if dict.keys.contains("ShortUrlTaskId") {
                    self.shortUrlTaskId = dict["ShortUrlTaskId"] as! Int64
                }
                if dict.keys.contains("Sign") {
                    self.sign = dict["Sign"] as! String
                }
                if dict.keys.contains("SmsType") {
                    self.smsType = dict["SmsType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int64
                }
                if dict.keys.contains("TemplateId") {
                    self.templateId = dict["TemplateId"] as! Int64
                }
                if dict.keys.contains("TemplateName") {
                    self.templateName = dict["TemplateName"] as! String
                }
                if dict.keys.contains("TemplateType") {
                    self.templateType = dict["TemplateType"] as! Int64
                }
            }
        }
        public var list: [SmsTemplatePageListResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                var tmp : [SmsTemplatePageListResponseBody.Model.List] = []
                for v in dict["List"] as! [Any] {
                    var model = SmsTemplatePageListResponseBody.Model.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("TotalPage") {
                self.totalPage = dict["TotalPage"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: SmsTemplatePageListResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = SmsTemplatePageListResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class SmsTemplatePageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmsTemplatePageListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SmsTemplatePageListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TaskCallChatsRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var callId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.callId != nil {
            map["CallId"] = self.callId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentId") {
            self.agentId = dict["AgentId"] as! Int64
        }
        if dict.keys.contains("AgentTag") {
            self.agentTag = dict["AgentTag"] as! String
        }
        if dict.keys.contains("CallId") {
            self.callId = dict["CallId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskCallChatsResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var fromNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fromNumber != nil {
                map["FromNumber"] = self.fromNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FromNumber") {
                self.fromNumber = dict["FromNumber"] as! String
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: [TaskCallChatsResponseBody.Model]?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var tmp : [TaskCallChatsResponseBody.Model] = []
            for v in dict["Model"] as! [Any] {
                var model = TaskCallChatsResponseBody.Model()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.model = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class TaskCallChatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskCallChatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TaskCallChatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TaskCallInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskCallInfoResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var finishTotal: Int64?

        public var total: Int64?

        public var unCallTotal: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finishTotal != nil {
                map["FinishTotal"] = self.finishTotal!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.unCallTotal != nil {
                map["UnCallTotal"] = self.unCallTotal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinishTotal") {
                self.finishTotal = dict["FinishTotal"] as! Int64
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
            if dict.keys.contains("UnCallTotal") {
                self.unCallTotal = dict["UnCallTotal"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: TaskCallInfoResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = TaskCallInfoResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class TaskCallInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskCallInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TaskCallInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TaskCallListRequest : Tea.TeaModel {
    public var batchId: String?

    public var callDate: String?

    public var endCallDate: String?

    public var intentTags: [String]?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var page: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.endCallDate != nil {
            map["EndCallDate"] = self.endCallDate!
        }
        if self.intentTags != nil {
            map["IntentTags"] = self.intentTags!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchId") {
            self.batchId = dict["BatchId"] as! String
        }
        if dict.keys.contains("CallDate") {
            self.callDate = dict["CallDate"] as! String
        }
        if dict.keys.contains("EndCallDate") {
            self.endCallDate = dict["EndCallDate"] as! String
        }
        if dict.keys.contains("IntentTags") {
            self.intentTags = dict["IntentTags"] as! [String]
        }
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! [String]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskCallListShrinkRequest : Tea.TeaModel {
    public var batchId: String?

    public var callDate: String?

    public var endCallDate: String?

    public var intentTagsShrink: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var page: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.endCallDate != nil {
            map["EndCallDate"] = self.endCallDate!
        }
        if self.intentTagsShrink != nil {
            map["IntentTags"] = self.intentTagsShrink!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchId") {
            self.batchId = dict["BatchId"] as! String
        }
        if dict.keys.contains("CallDate") {
            self.callDate = dict["CallDate"] as! String
        }
        if dict.keys.contains("EndCallDate") {
            self.endCallDate = dict["EndCallDate"] as! String
        }
        if dict.keys.contains("IntentTags") {
            self.intentTagsShrink = dict["IntentTags"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbersShrink = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskCallListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var addWx: Int64?

            public var addWxStatus: String?

            public var agentExtension: String?

            public var agentId: Int64?

            public var agentSpeakingDuration: Int64?

            public var agentSpeakingTime: String?

            public var agentTag: String?

            public var answerRecall: Int64?

            public var answerTime: String?

            public var batchId: String?

            public var callBeginTime: String?

            public var callId: String?

            public var callTimes: String?

            public var callType: Int64?

            public var chatRecord: String?

            public var gateway: String?

            public var hangupTime: String?

            public var hangupType: Int64?

            public var importTime: String?

            public var individualTag: String?

            public var intentDescription: String?

            public var intentTag: String?

            public var interceptReason: String?

            public var keywords: String?

            public var number: String?

            public var numberMD5: String?

            public var properties: String?

            public var remark: String?

            public var ringTime: Int64?

            public var sms: String?

            public var speakingDuration: Int64?

            public var speakingTime: String?

            public var speakingTurns: String?

            public var status: String?

            public var statusCode: Int64?

            public var statusDescription: String?

            public var tag: String?

            public var taskId: Int64?

            public var templateId: Int64?

            public var transferStatus: String?

            public var transferStatusCode: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addWx != nil {
                    map["AddWx"] = self.addWx!
                }
                if self.addWxStatus != nil {
                    map["AddWxStatus"] = self.addWxStatus!
                }
                if self.agentExtension != nil {
                    map["AgentExtension"] = self.agentExtension!
                }
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.agentSpeakingDuration != nil {
                    map["AgentSpeakingDuration"] = self.agentSpeakingDuration!
                }
                if self.agentSpeakingTime != nil {
                    map["AgentSpeakingTime"] = self.agentSpeakingTime!
                }
                if self.agentTag != nil {
                    map["AgentTag"] = self.agentTag!
                }
                if self.answerRecall != nil {
                    map["AnswerRecall"] = self.answerRecall!
                }
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.batchId != nil {
                    map["BatchId"] = self.batchId!
                }
                if self.callBeginTime != nil {
                    map["CallBeginTime"] = self.callBeginTime!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callTimes != nil {
                    map["CallTimes"] = self.callTimes!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.chatRecord != nil {
                    map["ChatRecord"] = self.chatRecord!
                }
                if self.gateway != nil {
                    map["Gateway"] = self.gateway!
                }
                if self.hangupTime != nil {
                    map["HangupTime"] = self.hangupTime!
                }
                if self.hangupType != nil {
                    map["HangupType"] = self.hangupType!
                }
                if self.importTime != nil {
                    map["ImportTime"] = self.importTime!
                }
                if self.individualTag != nil {
                    map["IndividualTag"] = self.individualTag!
                }
                if self.intentDescription != nil {
                    map["IntentDescription"] = self.intentDescription!
                }
                if self.intentTag != nil {
                    map["IntentTag"] = self.intentTag!
                }
                if self.interceptReason != nil {
                    map["InterceptReason"] = self.interceptReason!
                }
                if self.keywords != nil {
                    map["Keywords"] = self.keywords!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.numberMD5 != nil {
                    map["NumberMD5"] = self.numberMD5!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.ringTime != nil {
                    map["RingTime"] = self.ringTime!
                }
                if self.sms != nil {
                    map["Sms"] = self.sms!
                }
                if self.speakingDuration != nil {
                    map["SpeakingDuration"] = self.speakingDuration!
                }
                if self.speakingTime != nil {
                    map["SpeakingTime"] = self.speakingTime!
                }
                if self.speakingTurns != nil {
                    map["SpeakingTurns"] = self.speakingTurns!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.statusDescription != nil {
                    map["StatusDescription"] = self.statusDescription!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.transferStatus != nil {
                    map["TransferStatus"] = self.transferStatus!
                }
                if self.transferStatusCode != nil {
                    map["TransferStatusCode"] = self.transferStatusCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddWx") {
                    self.addWx = dict["AddWx"] as! Int64
                }
                if dict.keys.contains("AddWxStatus") {
                    self.addWxStatus = dict["AddWxStatus"] as! String
                }
                if dict.keys.contains("AgentExtension") {
                    self.agentExtension = dict["AgentExtension"] as! String
                }
                if dict.keys.contains("AgentId") {
                    self.agentId = dict["AgentId"] as! Int64
                }
                if dict.keys.contains("AgentSpeakingDuration") {
                    self.agentSpeakingDuration = dict["AgentSpeakingDuration"] as! Int64
                }
                if dict.keys.contains("AgentSpeakingTime") {
                    self.agentSpeakingTime = dict["AgentSpeakingTime"] as! String
                }
                if dict.keys.contains("AgentTag") {
                    self.agentTag = dict["AgentTag"] as! String
                }
                if dict.keys.contains("AnswerRecall") {
                    self.answerRecall = dict["AnswerRecall"] as! Int64
                }
                if dict.keys.contains("AnswerTime") {
                    self.answerTime = dict["AnswerTime"] as! String
                }
                if dict.keys.contains("BatchId") {
                    self.batchId = dict["BatchId"] as! String
                }
                if dict.keys.contains("CallBeginTime") {
                    self.callBeginTime = dict["CallBeginTime"] as! String
                }
                if dict.keys.contains("CallId") {
                    self.callId = dict["CallId"] as! String
                }
                if dict.keys.contains("CallTimes") {
                    self.callTimes = dict["CallTimes"] as! String
                }
                if dict.keys.contains("CallType") {
                    self.callType = dict["CallType"] as! Int64
                }
                if dict.keys.contains("ChatRecord") {
                    self.chatRecord = dict["ChatRecord"] as! String
                }
                if dict.keys.contains("Gateway") {
                    self.gateway = dict["Gateway"] as! String
                }
                if dict.keys.contains("HangupTime") {
                    self.hangupTime = dict["HangupTime"] as! String
                }
                if dict.keys.contains("HangupType") {
                    self.hangupType = dict["HangupType"] as! Int64
                }
                if dict.keys.contains("ImportTime") {
                    self.importTime = dict["ImportTime"] as! String
                }
                if dict.keys.contains("IndividualTag") {
                    self.individualTag = dict["IndividualTag"] as! String
                }
                if dict.keys.contains("IntentDescription") {
                    self.intentDescription = dict["IntentDescription"] as! String
                }
                if dict.keys.contains("IntentTag") {
                    self.intentTag = dict["IntentTag"] as! String
                }
                if dict.keys.contains("InterceptReason") {
                    self.interceptReason = dict["InterceptReason"] as! String
                }
                if dict.keys.contains("Keywords") {
                    self.keywords = dict["Keywords"] as! String
                }
                if dict.keys.contains("Number") {
                    self.number = dict["Number"] as! String
                }
                if dict.keys.contains("NumberMD5") {
                    self.numberMD5 = dict["NumberMD5"] as! String
                }
                if dict.keys.contains("Properties") {
                    self.properties = dict["Properties"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("RingTime") {
                    self.ringTime = dict["RingTime"] as! Int64
                }
                if dict.keys.contains("Sms") {
                    self.sms = dict["Sms"] as! String
                }
                if dict.keys.contains("SpeakingDuration") {
                    self.speakingDuration = dict["SpeakingDuration"] as! Int64
                }
                if dict.keys.contains("SpeakingTime") {
                    self.speakingTime = dict["SpeakingTime"] as! String
                }
                if dict.keys.contains("SpeakingTurns") {
                    self.speakingTurns = dict["SpeakingTurns"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusCode") {
                    self.statusCode = dict["StatusCode"] as! Int64
                }
                if dict.keys.contains("StatusDescription") {
                    self.statusDescription = dict["StatusDescription"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! Int64
                }
                if dict.keys.contains("TemplateId") {
                    self.templateId = dict["TemplateId"] as! Int64
                }
                if dict.keys.contains("TransferStatus") {
                    self.transferStatus = dict["TransferStatus"] as! String
                }
                if dict.keys.contains("TransferStatusCode") {
                    self.transferStatusCode = dict["TransferStatusCode"] as! Int64
                }
            }
        }
        public var list: [TaskCallListResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                var tmp : [TaskCallListResponseBody.Model.List] = []
                for v in dict["List"] as! [Any] {
                    var model = TaskCallListResponseBody.Model.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("TotalPage") {
                self.totalPage = dict["TotalPage"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: TaskCallListResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = TaskCallListResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class TaskCallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskCallListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TaskCallListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TaskCancelCallRequest : Tea.TeaModel {
    public var numbers: [String]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! [String]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskCancelCallShrinkRequest : Tea.TeaModel {
    public var numbersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Numbers") {
            self.numbersShrink = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskCancelCallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UnHandleNumbers") {
                self.unHandleNumbers = dict["UnHandleNumbers"] as! [String]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var model: TaskCancelCallResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = TaskCancelCallResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class TaskCancelCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskCancelCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TaskCancelCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TaskListRequest : Tea.TeaModel {
    public var createTime: String?

    public var lastCallTime: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.lastCallTime != nil {
            map["LastCallTime"] = self.lastCallTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("LastCallTime") {
            self.lastCallTime = dict["LastCallTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class IntentTags : Tea.TeaModel {
            public var intentDescription: String?

            public var intentTag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.intentDescription != nil {
                    map["IntentDescription"] = self.intentDescription!
                }
                if self.intentTag != nil {
                    map["IntentTag"] = self.intentTag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IntentDescription") {
                    self.intentDescription = dict["IntentDescription"] as! String
                }
                if dict.keys.contains("IntentTag") {
                    self.intentTag = dict["IntentTag"] as! String
                }
            }
        }
        public var allowCallTime: String?

        public var allowCallTimeFormat: String?

        public var allowDayOfWeek: String?

        public var callType: Int64?

        public var createTime: String?

        public var flashSmsTemplateId: Int64?

        public var flashSmsTemplateName: String?

        public var flashSmsType: Int64?

        public var importTime: String?

        public var intentTags: [TaskListResponseBody.Model.IntentTags]?

        public var invalidReCall: Int64?

        public var lastCallTime: String?

        public var maxConcurrency: Int64?

        public var personalityTags: [String]?

        public var priority: Int64?

        public var properties: String?

        public var recallType: Int64?

        public var sendSms: Int64?

        public var smsName: String?

        public var status: Int64?

        public var taskId: Int64?

        public var taskName: String?

        public var templateId: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowCallTime != nil {
                map["AllowCallTime"] = self.allowCallTime!
            }
            if self.allowCallTimeFormat != nil {
                map["AllowCallTimeFormat"] = self.allowCallTimeFormat!
            }
            if self.allowDayOfWeek != nil {
                map["AllowDayOfWeek"] = self.allowDayOfWeek!
            }
            if self.callType != nil {
                map["CallType"] = self.callType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.flashSmsTemplateId != nil {
                map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
            }
            if self.flashSmsTemplateName != nil {
                map["FlashSmsTemplateName"] = self.flashSmsTemplateName!
            }
            if self.flashSmsType != nil {
                map["FlashSmsType"] = self.flashSmsType!
            }
            if self.importTime != nil {
                map["ImportTime"] = self.importTime!
            }
            if self.intentTags != nil {
                var tmp : [Any] = []
                for k in self.intentTags! {
                    tmp.append(k.toMap())
                }
                map["IntentTags"] = tmp
            }
            if self.invalidReCall != nil {
                map["InvalidReCall"] = self.invalidReCall!
            }
            if self.lastCallTime != nil {
                map["LastCallTime"] = self.lastCallTime!
            }
            if self.maxConcurrency != nil {
                map["MaxConcurrency"] = self.maxConcurrency!
            }
            if self.personalityTags != nil {
                map["PersonalityTags"] = self.personalityTags!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.recallType != nil {
                map["RecallType"] = self.recallType!
            }
            if self.sendSms != nil {
                map["SendSms"] = self.sendSms!
            }
            if self.smsName != nil {
                map["SmsName"] = self.smsName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowCallTime") {
                self.allowCallTime = dict["AllowCallTime"] as! String
            }
            if dict.keys.contains("AllowCallTimeFormat") {
                self.allowCallTimeFormat = dict["AllowCallTimeFormat"] as! String
            }
            if dict.keys.contains("AllowDayOfWeek") {
                self.allowDayOfWeek = dict["AllowDayOfWeek"] as! String
            }
            if dict.keys.contains("CallType") {
                self.callType = dict["CallType"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FlashSmsTemplateId") {
                self.flashSmsTemplateId = dict["FlashSmsTemplateId"] as! Int64
            }
            if dict.keys.contains("FlashSmsTemplateName") {
                self.flashSmsTemplateName = dict["FlashSmsTemplateName"] as! String
            }
            if dict.keys.contains("FlashSmsType") {
                self.flashSmsType = dict["FlashSmsType"] as! Int64
            }
            if dict.keys.contains("ImportTime") {
                self.importTime = dict["ImportTime"] as! String
            }
            if dict.keys.contains("IntentTags") {
                var tmp : [TaskListResponseBody.Model.IntentTags] = []
                for v in dict["IntentTags"] as! [Any] {
                    var model = TaskListResponseBody.Model.IntentTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.intentTags = tmp
            }
            if dict.keys.contains("InvalidReCall") {
                self.invalidReCall = dict["InvalidReCall"] as! Int64
            }
            if dict.keys.contains("LastCallTime") {
                self.lastCallTime = dict["LastCallTime"] as! String
            }
            if dict.keys.contains("MaxConcurrency") {
                self.maxConcurrency = dict["MaxConcurrency"] as! Int64
            }
            if dict.keys.contains("PersonalityTags") {
                self.personalityTags = dict["PersonalityTags"] as! [String]
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int64
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! String
            }
            if dict.keys.contains("RecallType") {
                self.recallType = dict["RecallType"] as! Int64
            }
            if dict.keys.contains("SendSms") {
                self.sendSms = dict["SendSms"] as! Int64
            }
            if dict.keys.contains("SmsName") {
                self.smsName = dict["SmsName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: [TaskListResponseBody.Model]?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var tmp : [TaskListResponseBody.Model] = []
            for v in dict["Model"] as! [Any] {
                var model = TaskListResponseBody.Model()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.model = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class TaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TaskListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TaskRecoverCallRequest : Tea.TeaModel {
    public var beginImportTime: String?

    public var endImportTime: String?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginImportTime != nil {
            map["BeginImportTime"] = self.beginImportTime!
        }
        if self.endImportTime != nil {
            map["EndImportTime"] = self.endImportTime!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginImportTime") {
            self.beginImportTime = dict["BeginImportTime"] as! String
        }
        if dict.keys.contains("EndImportTime") {
            self.endImportTime = dict["EndImportTime"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbers = dict["Numbers"] as! [String]
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskRecoverCallShrinkRequest : Tea.TeaModel {
    public var beginImportTime: String?

    public var endImportTime: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginImportTime != nil {
            map["BeginImportTime"] = self.beginImportTime!
        }
        if self.endImportTime != nil {
            map["EndImportTime"] = self.endImportTime!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginImportTime") {
            self.beginImportTime = dict["BeginImportTime"] as! String
        }
        if dict.keys.contains("EndImportTime") {
            self.endImportTime = dict["EndImportTime"] as! String
        }
        if dict.keys.contains("Numbers") {
            self.numbersShrink = dict["Numbers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class TaskRecoverCallResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var model: [String: Any]?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class TaskRecoverCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskRecoverCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TaskRecoverCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TemplateListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class TemplateListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var intentTags: [[String: Any]]?

        public var personalityTags: [String]?

        public var properties: String?

        public var templateId: Int64?

        public var templateName: String?

        public var templateType: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intentTags != nil {
                map["IntentTags"] = self.intentTags!
            }
            if self.personalityTags != nil {
                map["PersonalityTags"] = self.personalityTags!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IntentTags") {
                self.intentTags = dict["IntentTags"] as! [[String: Any]]
            }
            if dict.keys.contains("PersonalityTags") {
                self.personalityTags = dict["PersonalityTags"] as! [String]
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! Int64
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: [TemplateListResponseBody.Model]?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var tmp : [TemplateListResponseBody.Model] = []
            for v in dict["Model"] as! [Any] {
                var model = TemplateListResponseBody.Model()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.model = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class TemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TemplateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TemplateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAgentStatusRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentStatus: Int64?

    public var agentTag: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentStatus != nil {
            map["AgentStatus"] = self.agentStatus!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentId") {
            self.agentId = dict["AgentId"] as! Int64
        }
        if dict.keys.contains("AgentStatus") {
            self.agentStatus = dict["AgentStatus"] as! Int64
        }
        if dict.keys.contains("AgentTag") {
            self.agentTag = dict["AgentTag"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateAgentStatusResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var model: [String: Any]?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class UpdateAgentStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgentStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAgentStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTaskCustomerRequest : Tea.TeaModel {
    public class Customers : Tea.TeaModel {
        public var cancel: Int64?

        public var number: String?

        public var properties: [String: Any]?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cancel != nil {
                map["Cancel"] = self.cancel!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cancel") {
                self.cancel = dict["Cancel"] as! Int64
            }
            if dict.keys.contains("Number") {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! [String: Any]
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var customers: [UpdateTaskCustomerRequest.Customers]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customers != nil {
            var tmp : [Any] = []
            for k in self.customers! {
                tmp.append(k.toMap())
            }
            map["Customers"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Customers") {
            var tmp : [UpdateTaskCustomerRequest.Customers] = []
            for v in dict["Customers"] as! [Any] {
                var model = UpdateTaskCustomerRequest.Customers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customers = tmp
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class UpdateTaskCustomerShrinkRequest : Tea.TeaModel {
    public var customersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customersShrink != nil {
            map["Customers"] = self.customersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Customers") {
            self.customersShrink = dict["Customers"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
    }
}

public class UpdateTaskCustomerResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UnHandleNumbers") {
                self.unHandleNumbers = dict["UnHandleNumbers"] as! [String]
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: UpdateTaskCustomerResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = UpdateTaskCustomerResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
        }
    }
}

public class UpdateTaskCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTaskCustomerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTaskCustomerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
