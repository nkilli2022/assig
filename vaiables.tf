variable "rgname" {
    default    = "TS-Dev-APP-Diskrg"
    type        = string
    description = " this is rgname " 
}
variable "loc" {
    default     =  "east us"
    type        = string
    description = "this is rg location"
}
variable "diskname" {
    type   = list (any)
    default = [" TS-Dev-App-disk", "TS-Dev-App-datadisk" , "TS-Dev-App-logdisk", "TS-Dev-App-osdisk" ]
}